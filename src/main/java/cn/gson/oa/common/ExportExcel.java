package cn.gson.oa.common;

import cn.gson.oa.common.utils.FreemarkerUtils;
import cn.gson.oa.dto.freemarker.input.FreemarkerInput;

import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public class ExportExcel {
    public static void exportFile(HttpServletResponse response, String name, Map<String, Object> data) {
        FreemarkerInput freemarkerInput = new FreemarkerInput();
        //设置freemarker模板路径
        freemarkerInput.setTemplateFilePath("/templates");
        //模板名字
        freemarkerInput.setTemplateName("template.ftl");
        //缓存xml路径
        freemarkerInput.setXmlTempFile("/templates/tmp");
        //缓存xml名字
        freemarkerInput.setFileName("tmpXml");
        //设置freemarker模板数据
        freemarkerInput.setDataMap(data);
        //导出Excel到输出流（Excel2007版及以上，xlsx格式）速度快

        FreemarkerUtils.exportImageExcelNew(response, freemarkerInput, name);
    }

}
