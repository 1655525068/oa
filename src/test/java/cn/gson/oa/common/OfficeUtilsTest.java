package cn.gson.oa.common;

import cn.gson.oa.model.entity.book.ThreeBook;
import com.alibaba.fastjson.JSONObject;
import com.jfinal.plugin.activerecord.Record;
import junit.framework.TestCase;

import java.io.File;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

public class OfficeUtilsTest extends TestCase {

    public void testReadOffice() {
    File file = Paths.get(System.getProperty("user.dir"), "doc", "现场设计室变更三单管理台账.xlsx").toFile();
    String[] s = new String[]{
            "序号","类型","三单号","中文名称","FCR版本","状态","编制人","最新版","接收时间","分发时间","作废标识","相关文件编码","相关文件内部编码","图纸版本","专业","责任方","识别责任人","处理人","是否需要处理","处理方式","处理单号","处理完成时间","责任方","备注","是否涉及索赔","计划关闭时间（CR关闭时间）直接关闭/转FCR/转DEN","实际关闭时间","设计点值","审核点值"
    };


        List<Record> records = OfficeUtils.readOffice(file, s);

        for (Record record : records) {
            Map<String, Object> map = record.getColumns();
            map.forEach((s1, o) -> System.out.println(s1+":" +o.toString()));
        }
    }

    public void testReadXls() {
    }

    public void testReadXlsx() {
    }
}