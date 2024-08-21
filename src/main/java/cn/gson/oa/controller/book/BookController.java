package cn.gson.oa.controller.book;

import cn.gson.oa.common.ExportExcel;
import cn.gson.oa.model.dao.book.ThreeBookDao;
import cn.gson.oa.model.dao.book.ThreeBookProcessDao;
import cn.gson.oa.model.dao.user.UserDao;
import cn.gson.oa.model.entity.book.ThreeBook;
import cn.gson.oa.model.entity.book.ThreeBookProcess;
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

    @Autowired
    private ThreeBookDao tbDao;

    @Autowired
    private ThreeBookProcessDao threeBookProcessDao;

    @RequestMapping("getExcel")
    public void getExcel(HttpServletRequest request) {
        Iterable<ThreeBook> books = bookServices.getThreeBookByPrepared("冉英男");
        books.forEach(System.out::println);
    }

    @RequestMapping("deletethreebook")
    public String deletethreebook(@RequestParam(value = "bookId") Long bookId) {
        ThreeBook tb = tbDao.findOneByBookId(bookId);
        tbDao.delete(tb);
        return "redirect:/threebookmanage";
    }

    @RequestMapping("threebookmanage")
    public String threebookmanage(Model model) throws CloneNotSupportedException {

        Iterable<ThreeBook> threeBooks = bookServices.getAllThreeBook();
        threeBooks.forEach(
                x -> {
                    x.setProcesses(threeBookProcessDao.findAllByTbs(x));
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
        return "book/threebookmanage";
    }

    @RequestMapping("threebooktable")
    public String threebooktable(Model model, @RequestParam(value = "search", required = false) String search
    ) throws CloneNotSupportedException {
        Iterable<ThreeBook> threeBooks = null;
        if (StringUtil.isEmpty(search)) {
            threeBooks = bookServices.getAllThreeBook();
        } else {
            System.out.println(search);
            threeBooks = bookServices.getAllThreeBookByCondition(search);
        }
        threeBooks.forEach(
                x -> {
                    x.setProcesses(threeBookProcessDao.findAllByTbs(x));
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

        return "book/threebooktable";
    }

    @RequestMapping(value = "threebookexport", method = RequestMethod.GET)
    public String threebookexport(Model model, HttpServletResponse response, @RequestParam(value = "search", required = false) String search) throws CloneNotSupportedException {
        Iterable<ThreeBook> threeBooks = null;
        if (StringUtil.isEmpty(search)) {
            threeBooks = bookServices.getAllThreeBook();
        } else {
            System.out.println(search);
            threeBooks = bookServices.getAllThreeBookByCondition(search);
        }

        threeBooks.forEach(
                x -> {
                    x.setProcesses(threeBookProcessDao.findAllByTbs(x));
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
            ExportExcel.exportFile(response, "现场设计室变更三单管理台账" + new Date(), datas);
        }

        model.addAttribute("threeBooks", threeBooks);
//        model.addAttribute("page", threeBookPage);
        model.addAttribute("url", "threebooktable");
        return "book/threebookmanage";
    }

    private ThreeBook createThreeBook(ThreeBook threeBook, ThreeBookProcess pro) {
        if (pro != null) {
            threeBook.setHandleMethod(pro.getHandleMethod());
            threeBook.setProcessOrderNumber(pro.getProcessOrderNumber());
            threeBook.setProcessCompletionTime(pro.getProcessCompletionTime());
            threeBook.setRemarks(pro.getRemarks());
        } else {
            threeBook.setShouldHandle("/");
            threeBook.setHandleMethod("/");
            threeBook.setProcessOrderNumber("/");
            threeBook.setProcessCompletionTime("/");
            threeBook.setProcessResponsibleParty("/");
            threeBook.setRemarks("/");
            threeBook.setShouldClaim("/");
        }
        return threeBook;
    }

}
