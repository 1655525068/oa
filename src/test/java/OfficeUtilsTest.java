import cn.gson.oa.common.OfficeUtils;
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
                "序号", "类型", "三单号", "中文名称", "FCR版本", "状态", "编制人", "最新版", "接收时间", "分发时间", "作废标识", "相关文件编码", "相关文件内部编码", "图纸版本", "专业", "责任方"};


        List<Record> records = OfficeUtils.readOffice(file, s);

        for (Record record : records) {
            Map<String, Object> map = record.getColumns();
            map.forEach((s1, o) -> {
                        switch (s1) {
                            case "序号":
                                System.out.println(o.toString());
                        }
                    }

            );
        }
    }

    public void testReadXls() {
    }

    public void testReadXlsx() {
    }
}