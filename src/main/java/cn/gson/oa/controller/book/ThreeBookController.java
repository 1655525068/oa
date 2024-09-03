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
import java.text.SimpleDateFormat;
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
                int i = 1;
                StringBuilder handleMethod = new StringBuilder();
                StringBuilder processOrderNumber = new StringBuilder();
                StringBuilder remarks = new StringBuilder();
                for (ThreeBookProcess process : threeBook.getProcesses()) {
                    System.out.println(process);
                    handleMethod.append(i).append(".").append(process.getHandleMethod()).append("<br>");
                    processOrderNumber.append(i).append(".").append(process.getProcessOrderNumber()).append("<br>");
                    remarks.append(i).append(".").append(process.getRemarks()).append("<br>");
                    i++;

                }
                threeBook.setHandleMethod(handleMethod.toString());
                threeBook.setProcessOrderNumber(processOrderNumber.toString());
                threeBook.setRemarks(remarks.toString());
                threeBooks1.add(threeBook);
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
                int i = 1;
                StringBuilder handleMethod = new StringBuilder();
                StringBuilder processOrderNumber = new StringBuilder();
                StringBuilder remarks = new StringBuilder();
                for (ThreeBookProcess process : threeBook.getProcesses()) {
                    System.out.println(process);
                    handleMethod.append(i).append(".").append(process.getHandleMethod()).append("<br>");
                    processOrderNumber.append(i).append(".").append(process.getProcessOrderNumber()).append("<br>");
                    remarks.append(i).append(".").append(process.getRemarks()).append("<br>");
                    i++;

                }
                threeBook.setHandleMethod(handleMethod.toString());
                threeBook.setProcessOrderNumber(processOrderNumber.toString());
                threeBook.setRemarks(remarks.toString());
                threeBooks1.add(threeBook);
            } else
                threeBooks1.add(createThreeBook(threeBook, null));
        }
        model.addAttribute("threeBooks", threeBooks1);
        model.addAttribute("url", "threebooktable");
        model.addAttribute("user", user);

        return "book/threebooktable";
    }

    @RequestMapping(value = "threebookexport", method = RequestMethod.GET)
    public String threebookexport(Model model, HttpServletResponse response, @SessionAttribute("userId") Long userId, @RequestParam(value = "search", required = false) String search) throws CloneNotSupportedException {
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

        int index = 1;


        for (ThreeBook threeBook : threeBooks) {
            if (threeBook.getProcesses().size() > 0) {
                int i = 1;
                StringBuilder handleMethod = new StringBuilder();
                StringBuilder processOrderNumber = new StringBuilder();
                StringBuilder remarks = new StringBuilder();
                for (ThreeBookProcess process : threeBook.getProcesses()) {
                    handleMethod.append(i).append(".").append(process.getHandleMethod()).append(i != threeBook.getProcesses().size() ? "\r\n" : "");
                    processOrderNumber.append(i).append(".").append(process.getProcessOrderNumber()).append(i != threeBook.getProcesses().size() ? "\r\n" : "");
                    remarks.append(i).append(".").append(process.getRemarks()).append(i != threeBook.getProcesses().size() ? "\r\n" : "");
                    i++;

                }
                threeBook.setHandleMethod(handleMethod.toString());
                threeBook.setProcessOrderNumber(processOrderNumber.toString());
                threeBook.setRemarks(remarks.toString());
                threeBooks1.add(threeBook);
            } else
                threeBooks1.add(createThreeBook(threeBook, null));
        }

        List<ThreeBook> threeBooks11 = new ArrayList<>(threeBooks1);
        for (ThreeBook threeBook : threeBooks11) {
            threeBook.setSerialNumber(index + "");
            index += 1;
        }

        datas.put("threeBooks1", threeBooks11);


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
            tb.setProcessOrderNumber(pro.getProcessOrderNumber());
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
