package cn.gson.oa.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFComment;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.streaming.SXSSFCell;
import org.apache.poi.xssf.streaming.SXSSFRow;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.jfinal.plugin.activerecord.Record;

/**
 * 文档处理工具类
 *
 * @author Chuck Don
 * @version 1.0
 * @Description
 * @since 2017年8月4日
 */
public class OfficeUtils {
    public static final String OFFICE_EXCEL_2003_POSTFIX = ".xls";
    public static final String OFFICE_EXCEL_2010_POSTFIX = ".xlsx";
    public static final String NOT_EXCEL_FILE = " : Not the Excel file!";

    public static List<Record> readOffice(File file, String[] columns) {
        FileInputStream io = null;
        List<Record> result = null;
        try {
            io = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        if (io != null) {
            String uploadFileName = file.getName();
            String suffix = uploadFileName.substring(
                    uploadFileName.lastIndexOf("."), uploadFileName.length());
            if (OFFICE_EXCEL_2010_POSTFIX.equals(suffix)) {
                result = readXlsx(io, columns);
            } else if (OFFICE_EXCEL_2003_POSTFIX.equals(suffix)) {
                result = readXls(io, columns);
            }
            try {
                io.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    public static void readXls(String path, String[] columns) {
        FileInputStream inStream;
        try {
            inStream = new FileInputStream(new File(path));
            readXls(inStream, columns);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static List<Record> readXls(FileInputStream inStream,
                                       String[] columns) {
        HSSFWorkbook hssfWorkbook = null;
        Record record = null;
        try {
            hssfWorkbook = new HSSFWorkbook(inStream);
        } catch (IOException e) {
            e.printStackTrace();

        }
        ;
        int size = hssfWorkbook.getNumberOfSheets();
        List<Record> result = new ArrayList<Record>();
        if (hssfWorkbook != null) {
            for (int numSheet = 0; numSheet < size; numSheet++) {
                HSSFSheet hssfSheet = hssfWorkbook.getSheetAt(numSheet);
                if (hssfSheet == null) {
                    continue;
                }
                for (int rowNum = 1; rowNum <= hssfSheet
                        .getLastRowNum(); rowNum++) {
                    HSSFRow hssfRow = hssfSheet.getRow(rowNum);
                    int minColIx = hssfRow.getFirstCellNum();
                    int maxColIx = hssfRow.getLastCellNum();
                    record = new Record();
                    for (int colIx = minColIx; colIx < maxColIx; colIx++) {
                        HSSFCell cell = hssfRow.getCell(colIx);
                        if (cell == null) {
                            continue;
                        }
                        record.set(columns[colIx], getStringVal(cell));
                    }
                    result.add(record);
                }
            }
            try {
                hssfWorkbook.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    public static List<Record> readXlsx(String path, String[] columns) {
        try {
            return readXlsx(new FileInputStream(new File(path)), columns);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return new ArrayList<Record>();
    }

    public static List<Record> readXlsx(InputStream is, String[] columns) {
        XSSFWorkbook xssfWorkbook = null;
        Record record = null;
        try {
            xssfWorkbook = new XSSFWorkbook(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
        List<Record> result = new ArrayList<Record>();
        if (xssfWorkbook != null) {
            // 循环每一页，并处理当前循环页
            Sheet sheet = xssfWorkbook.getSheetAt(0);
            if (sheet == null) {
                return result;
            }
            // 处理当前页，循环读取每一行
            for (int rowNum = 1; rowNum <= sheet.getLastRowNum(); rowNum++) {
                Row xssfRow = sheet.getRow(rowNum);
                //遇到空白行，跳过
                if (xssfRow == null) {
                    break;
                }
                int minColIx = xssfRow.getFirstCellNum();
                int maxColIx = xssfRow.getLastCellNum();
                record = new Record();
                for (int colIx = minColIx; colIx < maxColIx; colIx++) {
                    Cell cell = xssfRow.getCell(colIx);
                    if (cell == null) {
                        continue;
                    }
                    record.set(columns[colIx], getStringVal2(cell));
                }
                result.add(record);
            }
            try {
                xssfWorkbook.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    public static String getStringVal(HSSFCell cell) {
        switch (cell.getCellTypeEnum()) {
            case BOOLEAN:
                return cell.getBooleanCellValue() ? "TRUE" : "FALSE";
            case FORMULA:
                return cell.getCellFormula();
            case NUMERIC:
                cell.setCellType(CellType.STRING);
                return cell.getStringCellValue();
            default:
                return cell.getStringCellValue();
        }
    }

    public static String getStringVal2(Cell cell) {
        switch (cell.getCellTypeEnum()) {
            case BOOLEAN:
                return cell.getBooleanCellValue() ? "TRUE" : "FALSE";
            case FORMULA:
                return cell.getCellFormula();
            case NUMERIC:
                System.out.println(cell);
                cell.setCellType(CellType.STRING);
                return cell.getStringCellValue();
            default:
                return cell.getStringCellValue();
        }
    }

    /**
     * 未定义的字段
     */
    public static String NO_DEFINE = "no_define";
    /**
     * 默认日期格式
     */
    public static String DEFAULT_DATE_PATTERN = "yyyy年MM月dd日";
    public static int DEFAULT_COLOUMN_WIDTH = 17;

    /**
     * 导出Excel 97(.xls)格式 ，少量数据
     *
     * @param title       标题行
     * @param headMap     属性-列名
     * @param jsonArray   数据集
     * @param datePattern 日期格式，null则用默认日期格式
     * @param colWidth    列宽 默认 至少17个字节
     * @param out         输出流
     */
    public static void exportExcel(String title, Map<String, String> headMap,
                                   JSONArray jsonArray, String datePattern, int colWidth,
                                   OutputStream out) {
        if (datePattern == null) {
            datePattern = DEFAULT_DATE_PATTERN;
        }
        // 声明一个工作薄
        HSSFWorkbook workbook = new HSSFWorkbook();
        workbook.createInformationProperties();
        workbook.getDocumentSummaryInformation().setCompany("夏恒科技网络公司公司");
        // 表头样式
        HSSFCellStyle titleStyle = workbook.createCellStyle();
        HSSFFont titleFont = workbook.createFont();
        titleFont.setFontHeightInPoints((short) 20);
        titleStyle.setFont(titleFont);
        // 列头样式
        HSSFCellStyle headerStyle = workbook.createCellStyle();
        HSSFFont headerFont = workbook.createFont();
        headerFont.setFontHeightInPoints((short) 12);
        headerStyle.setFont(headerFont);
        // 单元格样式
        HSSFCellStyle cellStyle = workbook.createCellStyle();
        HSSFFont cellFont = workbook.createFont();
        cellStyle.setFont(cellFont);
        // 生成一个(带标题)表格
        HSSFSheet sheet = workbook.createSheet();
        // 声明一个画图的顶级管理器
        HSSFPatriarch patriarch = sheet.createDrawingPatriarch();
        // 定义注释的大小和位置,详见文档
        HSSFComment comment = patriarch.createComment(
                new HSSFClientAnchor(0, 0, 0, 0, (short) 4, 2, (short) 6, 5));
        // 设置注释内容
        comment.setString(new HSSFRichTextString("可以在POI中添加注释！"));
        // 设置注释作者，当鼠标移动到单元格上是可以在状态栏中看到该内容.
        comment.setAuthor("JACK");
        // 设置列宽,至少字节数
        int minBytes = colWidth < DEFAULT_COLOUMN_WIDTH ? DEFAULT_COLOUMN_WIDTH
                : colWidth;
        int[] arrColWidth = new int[headMap.size()];
        // 产生表格标题行,以及设置列宽
        String[] properties = new String[headMap.size()];
        String[] headers = new String[headMap.size()];
        int ii = 0;
        for (Iterator<String> iter = headMap.keySet().iterator(); iter
                .hasNext(); ) {
            String fieldName = iter.next();

            properties[ii] = fieldName;
            headers[ii] = fieldName;

            int bytes = fieldName.getBytes().length;
            arrColWidth[ii] = bytes < minBytes ? minBytes : bytes;
            sheet.setColumnWidth(ii, arrColWidth[ii] * 256);
            ii++;
        }
        // 遍历集合数据，产生数据行
        int rowIndex = 0;
        for (Object obj : jsonArray) {
            if (rowIndex == 65535 || rowIndex == 0) {
                if (rowIndex != 0) {
                    // 如果数据超过了，则在第二页显示
                    sheet = workbook.createSheet();
                }
                // 表头 rowIndex=0
                HSSFRow titleRow = sheet.createRow(0);
                titleRow.createCell(0).setCellValue(title);
                titleRow.getCell(0).setCellStyle(titleStyle);
                sheet.addMergedRegion(
                        new CellRangeAddress(0, 0, 0, headMap.size() - 1));

                // 列头 rowIndex =1
                HSSFRow headerRow = sheet.createRow(1);
                for (int i = 0; i < headers.length; i++) {
                    headerRow.createCell(i).setCellValue(headers[i]);
                    headerRow.getCell(i).setCellStyle(headerStyle);

                }
                // 数据内容从 rowIndex=2开始
                rowIndex = 2;
            }
            JSONObject jo = (JSONObject) JSONObject.toJSON(obj);
            HSSFRow dataRow = sheet.createRow(rowIndex);
            for (int i = 0; i < properties.length; i++) {
                HSSFCell newCell = dataRow.createCell(i);
                Object o = jo.get(properties[i]);
                String cellValue = "";
                if (o == null) {
                    cellValue = "";
                } else if (o instanceof Date) {
                    cellValue = new SimpleDateFormat(datePattern).format(o);
                } else {
                    cellValue = o.toString();
                }
                newCell.setCellValue(cellValue);
                newCell.setCellStyle(cellStyle);
            }
            rowIndex++;
        }
        // 自动调整宽度
        /*
         * for (int i = 0; i < headers.length; i++) { sheet.autoSizeColumn(i); }
         */
        try {
            workbook.write(out);
            workbook.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 导出Excel 2007 OOXML (.xlsx)格式
     *
     * @param title       标题行
     * @param headMap     属性-列头
     * @param list        数据集
     * @param datePattern 日期格式，传null值则默认 年月日
     * @param colWidth    列宽 默认 至少17个字节
     * @param out         输出流
     */
    public static void exportExcelX(String title, Map<String, String> headMap,
                                    List<Record> list, String datePattern, int colWidth,
                                    OutputStream out) {
        if (datePattern == null) {
            datePattern = DEFAULT_DATE_PATTERN;
        }
        // 声明一个工作薄,缓存
        SXSSFWorkbook workbook = new SXSSFWorkbook(1000);
        workbook.setCompressTempFiles(true);
        // 表头样式
        CellStyle titleStyle = workbook.createCellStyle();
        titleStyle.setAlignment(HorizontalAlignment.CENTER);
        Font titleFont = workbook.createFont();
        titleFont.setFontHeightInPoints((short) 20);
        // titleFont.setBoldweight((short) 700);
        titleStyle.setFont(titleFont);
        // 列头样式
        CellStyle headerStyle = workbook.createCellStyle();
        Font headerFont = workbook.createFont();
        headerFont.setFontHeightInPoints((short) 12);
        headerStyle.setFont(headerFont);
        headerStyle.setAlignment(HorizontalAlignment.CENTER);
        // 单元格样式
        CellStyle cellStyle = workbook.createCellStyle();
        Font cellFont = workbook.createFont();
        cellStyle.setFont(cellFont);
        // 生成一个(带标题)表格
        SXSSFSheet sheet = workbook.createSheet();
        // 设置列宽,至少字节数
        int minBytes = colWidth < DEFAULT_COLOUMN_WIDTH ? DEFAULT_COLOUMN_WIDTH
                : colWidth;
        int[] arrColWidth = new int[headMap.size()];
        // 产生表格标题行,以及设置列宽
        String[] properties = new String[headMap.size()];
        String[] headers = new String[headMap.size()];
        int ii = 0;
        for (Iterator<String> iter = headMap.keySet().iterator(); iter
                .hasNext(); ) {
            String fieldName = iter.next();

            properties[ii] = fieldName;
            headers[ii] = headMap.get(fieldName);

            int bytes = fieldName.getBytes().length;
            arrColWidth[ii] = bytes < minBytes ? minBytes : bytes;
            sheet.setColumnWidth(ii, arrColWidth[ii] * 256);
            ii++;
        }
        // 遍历集合数据，产生数据行
        int rowIndex = 0;
        for (Record record : list) {
            if (rowIndex == 65535 || rowIndex == 0) {
                if (rowIndex != 0) {
                    // 如果数据超过了，则在第二页显示
                    sheet = workbook.createSheet();
                }
                // 表头 rowIndex=0
                SXSSFRow titleRow = sheet.createRow(0);
                titleRow.createCell(0).setCellValue(title);
                titleRow.getCell(0).setCellStyle(titleStyle);
                sheet.addMergedRegion(
                        new CellRangeAddress(0, 0, 0, headMap.size() - 1));
                // 列头 rowIndex =1
                SXSSFRow headerRow = sheet.createRow(1);
                for (int i = 0; i < headers.length; i++) {
                    headerRow.createCell(i).setCellValue(headers[i]);
                    headerRow.getCell(i).setCellStyle(headerStyle);

                }
                // 数据内容从 rowIndex=2开始
                rowIndex = 2;
            }
            SXSSFRow dataRow = sheet.createRow(rowIndex);
            for (int i = 0; i < properties.length; i++) {
                SXSSFCell newCell = dataRow.createCell(i);
                Object o = record.get(properties[i]);
                String cellValue = "";
                if (o == null) {
                    cellValue = "";
                } else if (o instanceof Date) {
                    cellValue = new SimpleDateFormat(datePattern).format(o);
                } else if (o instanceof Float || o instanceof Double) {
                    cellValue = new BigDecimal(o.toString())
                            .setScale(2, BigDecimal.ROUND_HALF_UP).toString();
                } else {
                    cellValue = o.toString();
                }
                newCell.setCellValue(cellValue);
                newCell.setCellStyle(cellStyle);
            }
            rowIndex++;
        }
        // 自动调整宽度
        /*
         * for (int i = 0; i < headers.length; i++) { sheet.autoSizeColumn(i); }
         */
        try {
            workbook.write(out);
            workbook.close();
            workbook.dispose();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) throws IOException {
        // int count = 100000;
        // JSONArray ja = new JSONArray();
        // for (int i = 0; i < 100; i++) {
        // Student s = new OfficeUtils().new Student();
        // s.setName("POI" + i);
        // s.setAge(i);
        // s.setBirthday(new Date());
        // s.setHeight(i);
        // s.setWeight(i);
        // s.setSex(i / 2 == 0 ? false : true);
        // ja.add(s);
        // }
        // Map<String, String> headMap = new LinkedHashMap<String, String>();
        // headMap.put("name", "姓名");
        // headMap.put("age", "年龄");
        // headMap.put("birthday", "生日");
        // headMap.put("height", "身高");
        // headMap.put("weight", "体重");
        // headMap.put("sex", "性别");

        // String title = "测试";
        /*
         * OutputStream outXls = new FileOutputStream("E://a.xls");
         * //System.out.println("正在导出xls...."); Date d = new Date();
         * ExcelUtil.exportExcel(title,headMap,ja,null,outXls);
         * //System.out.println("共"+count+"条数据,执行"+(new
         * Date().getTime()-d.getTime())+"ms"); outXls.close();
         */
        //
        // OutputStream outXlsx = new FileOutputStream("D://b.xlsx");
        // System.out.println("正在导出xlsx....");
        // Date d2 = new Date();
        // OfficeUtils.exportExcelX(title, headMap, ja, null, 0, outXlsx);
        // System.out.println("共" + count + "条数据,执行"
        // + (new Date().getTime() - d2.getTime()) + "ms");
        // outXlsx.close();

    }

    class Student {
        private String name;
        private int age;
        private Date birthday;
        private float height;
        private double weight;
        private boolean sex;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public Integer getAge() {
            return age;
        }

        public Date getBirthday() {
            return birthday;
        }

        public void setBirthday(Date birthday) {
            this.birthday = birthday;
        }

        public float getHeight() {
            return height;
        }

        public void setHeight(float height) {
            this.height = height;
        }

        public double getWeight() {
            return weight;
        }

        public void setWeight(double weight) {
            this.weight = weight;
        }

        public boolean isSex() {
            return sex;
        }

        public void setSex(boolean sex) {
            this.sex = sex;
        }

        public void setAge(Integer age) {
            this.age = age;
        }
    }
}
