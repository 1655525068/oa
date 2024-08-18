package cn.gson.oa.controller.book;

import cn.gson.oa.common.ExportExcel;
import cn.gson.oa.model.dao.user.UserDao;
import cn.gson.oa.model.entity.book.ThreeBook;
import cn.gson.oa.services.book.BookServices;
import com.github.pagehelper.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller
@RequestMapping("/")
public class BookController {

    @Autowired
    private BookServices bookServices;

    @RequestMapping("getExcel")
    public void getExcel(HttpServletRequest request) {
        Iterable<ThreeBook> books = bookServices.getThreeBookByPrepared("冉英男");
        books.forEach(System.out::println);
    }

    @RequestMapping("threebookmanage")
    public String usermanage(Model model) {

        Iterable<ThreeBook> threeBooks = bookServices.getAllThreeBook();
        model.addAttribute("threeBooks", threeBooks);
//        model.addAttribute("page", threeBookPage);
        model.addAttribute("url", "threebooktable");
        return "book/threebookmanage";
    }

    @RequestMapping("threebooktable")
    public String userPaging(Model model, @RequestParam(value = "search", required = false) String search
    ) {
        Iterable<ThreeBook> threeBooks = null;
        if (StringUtil.isEmpty(search)) {
            threeBooks = bookServices.getAllThreeBook();
        } else {
            System.out.println(search);
            threeBooks = bookServices.getAllThreeBookByCondition(search);
        }
        model.addAttribute("threeBooks", threeBooks);
        model.addAttribute("url", "threebooktable");

        return "book/threebooktable";
    }

    @RequestMapping(value = "threebookexport", method = RequestMethod.GET)
    public String export(Model model, HttpServletResponse response, @RequestParam(value = "search", required = false) String search) {
        Iterable<ThreeBook> threeBooks = null;
        if (StringUtil.isEmpty(search)) {
            threeBooks = bookServices.getAllThreeBook();
        } else {
            System.out.println(search);
            threeBooks = bookServices.getAllThreeBookByCondition(search);
        }
        Map<String, Object> datas = new HashMap<>();

        List<ThreeBook> threeBooks1 = new ArrayList<>();
        List<ThreeBook> threeBooks2 = new ArrayList<>();
        List<ThreeBook> threeBooks3 = new ArrayList<>();

        int index = 1;
        for (ThreeBook threeBook : threeBooks) {
            threeBook.setSerialNumber(index + "");
            threeBooks1.add(threeBook);
            index += 1;
        }

        datas.put("threeBooks1", threeBooks1);

        threeBooks1.forEach(x -> {
            if (x.getType().equals("CR")) {
                threeBooks2.add(x);
            } else {
                threeBooks3.add(x);
            }
        });
        datas.put("threeBooks2", threeBooks2);
        datas.put("threeBooks3", threeBooks3);

        if (threeBooks1.size() > 0) {
            ExportExcel.exportFile(response, "现场设计室变更三单管理台账" + new Date(), datas);
        }

        model.addAttribute("threeBooks", threeBooks);
//        model.addAttribute("page", threeBookPage);
        model.addAttribute("url", "threebooktable");
        return "book/threebookmanage";
    }

}
