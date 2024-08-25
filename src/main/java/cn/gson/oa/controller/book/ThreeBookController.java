package cn.gson.oa.controller.book;

import cn.gson.oa.common.ExportExcel;
import cn.gson.oa.model.dao.book.ThreeBookDao;
import cn.gson.oa.model.dao.book.ThreeBookProcessDao;
import cn.gson.oa.model.dao.user.UserDao;
import cn.gson.oa.model.entity.book.ThreeBook;
import cn.gson.oa.model.entity.book.ThreeBookProcess;
import cn.gson.oa.model.entity.user.User;
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
public class ThreeBookController {

    @Autowired
    private BookServices bs;

    @Autowired
    private ThreeBookDao tbDao;

    @Autowired
    private ThreeBookProcessDao tbpDao;

    @Autowired
    private UserDao udao;

    @RequestMapping("deletethreebook")
    public String deletethreebook(@RequestParam(value = "bookId") Long bookId) {
        ThreeBook tb = tbDao.findOneByBookId(bookId);
        tbDao.delete(tb);
        return "redirect:/threebookmanage";
    }

    @RequestMapping("threebookmanage")
    public String threebookmanage(Model model, @SessionAttribute("userId") Long userId) throws CloneNotSupportedException {

        User user = udao.findOne(userId);

        Iterable<ThreeBook> threeBooks = bs.getAllThreeBook();
        threeBooks.forEach(
                x -> {
                    x.setProcesses(tbpDao.findAllByTbs(x));
                }
        );
        List<ThreeBook> threeBooks1 = new ArrayList<>();
        for (ThreeBook threeBook : threeBooks) {
            if (threeBook.getProcesses().size() > 0) {
                for (ThreeBookProcess process : threeBook.getProcesses()) {
                    ThreeBook t = (ThreeBook) threeBook.clone();
                    threeBooks1.add(createThreeBook(t, process));
                }
            } else
                threeBooks1.add(createThreeBook(threeBook, null));
        }
        model.addAttribute("threeBooks", threeBooks1);
//        model.addAttribute("page", threeBookPage);
        model.addAttribute("url", "threebooktable");
        model.addAttribute("user", user);
        return "book/threebookmanage";
    }

    @RequestMapping("threebooktable")
    public String threebooktable(Model model, @SessionAttribute("userId") Long userId, @RequestParam(value = "search", required = false) String search
    ) throws CloneNotSupportedException {
        User user = udao.findOne(userId);
        Iterable<ThreeBook> threeBooks = null;
        if (StringUtil.isEmpty(search)) {
            threeBooks = bs.getAllThreeBook();
        } else {
            System.out.println(search);
            threeBooks = bs.getAllThreeBookByCondition(search);
        }
        threeBooks.forEach(
                x -> {
                    x.setProcesses(tbpDao.findAllByTbs(x));
                }
        );
        List<ThreeBook> threeBooks1 = new ArrayList<>();
        for (ThreeBook threeBook : threeBooks) {
            if (threeBook.getProcesses().size() > 0) {
                for (ThreeBookProcess process : threeBook.getProcesses()) {
                    ThreeBook t = (ThreeBook) threeBook.clone();
                    threeBooks1.add(createThreeBook(t, process));
                }
            } else
                threeBooks1.add(createThreeBook(threeBook, null));
        }
        model.addAttribute("threeBooks", threeBooks1);
        model.addAttribute("url", "threebooktable");
        model.addAttribute("user", user);

        return "book/threebooktable";
    }

    @RequestMapping(value = "threebookexport", method = RequestMethod.GET)
    public String threebookexport(Model model, HttpServletResponse response,@SessionAttribute("userId") Long userId, @RequestParam(value = "search", required = false) String search) throws CloneNotSupportedException {
        User user = udao.findOne(userId);
        Iterable<ThreeBook> threeBooks = null;
        if (StringUtil.isEmpty(search)) {
            threeBooks = bs.getAllThreeBook();
        } else {
            System.out.println(search);
            threeBooks = bs.getAllThreeBookByCondition(search);
        }

        threeBooks.forEach(
                x -> {
                    x.setProcesses(tbpDao.findAllByTbs(x));
                }
        );
        Map<String, Object> datas = new HashMap<>();

        List<ThreeBook> threeBooks1 = new ArrayList<>();
        List<ThreeBook> threeBooks2 = new ArrayList<>();
        List<ThreeBook> threeBooks3 = new ArrayList<>();

        int index = 1;
        for (ThreeBook threeBook : threeBooks) {
            if (threeBook.getProcesses().size() > 0) {
                for (ThreeBookProcess process : threeBook.getProcesses()) {
                    ThreeBook t = (ThreeBook) threeBook.clone();
                    threeBooks1.add(createThreeBook(t, process));
                }
            } else
                threeBooks1.add(createThreeBook(threeBook, null));
        }

        List<ThreeBook> threeBooks11 = new ArrayList<>(threeBooks1);
        for (ThreeBook threeBook : threeBooks11) {
            threeBook.setSerialNumber(index + "");
            index += 1;
        }

        datas.put("threeBooks1", threeBooks11);

        threeBooks11.forEach(x -> {
            if (x.getType().equals("CR")) {
                threeBooks2.add(x);
            } else {
                threeBooks3.add(x);
            }
        });
        datas.put("threeBooks2", threeBooks2);
        datas.put("threeBooks3", threeBooks3);

        if (threeBooks1.size() > 0) {
            ExportExcel.exportFile(response, "现场设计室变更三单管理台账" + new Date().getTime(), "template1.ftl", datas);
        }

        model.addAttribute("threeBooks", threeBooks);
//        model.addAttribute("page", threeBookPage);
        model.addAttribute("url", "threebooktable");
        model.addAttribute("user", user);
        return "book/threebookmanage";
    }

    private ThreeBook createThreeBook(ThreeBook tb, ThreeBookProcess pro) {
        if (pro != null) {
            tb.setHandleMethod(pro.getHandleMethod());
            tb.setProcessOrderNumber(pro.getProcessOrderNumber());
            tb.setProcessCompletionTime(pro.getProcessCompletionTime());
            tb.setRemarks(pro.getRemarks());
        } else {
            tb.setShouldHandle("/");
            tb.setHandleMethod("/");
            tb.setProcessOrderNumber("/");
            tb.setProcessCompletionTime("/");
            tb.setProcessResponsibleParty("/");
            tb.setRemarks("/");
            tb.setShouldClaim("/");
        }
        return tb;
    }

}
