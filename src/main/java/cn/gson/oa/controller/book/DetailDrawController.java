package cn.gson.oa.controller.book;

import cn.gson.oa.common.ExportExcel;
import cn.gson.oa.model.dao.book.DetailDrawDao;
import cn.gson.oa.model.dao.book.DetailDrawQuestionDao;
import cn.gson.oa.model.dao.user.UserDao;
import cn.gson.oa.model.entity.book.DetailDraw;
import cn.gson.oa.model.entity.book.DetailDrawQuestion;
import cn.gson.oa.model.entity.system.SystemStatusList;
import cn.gson.oa.model.entity.system.SystemTypeList;
import cn.gson.oa.model.entity.user.Dept;
import cn.gson.oa.model.entity.user.Position;
import cn.gson.oa.model.entity.user.User;
import com.github.pagehelper.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller
@RequestMapping("/")
public class DetailDrawController {
    @Autowired
    private DetailDrawDao ddDao;

    @Autowired
    private DetailDrawQuestionDao ddqDao;

    @Autowired
    private UserDao udao;

    @RequestMapping("deletedetaildraw")
    public String deletedetaildraw(@RequestParam(value = "bookId") Long bookId) {
        DetailDraw dd = ddDao.findOneByBookId(bookId);
        ddDao.delete(dd);
        return "redirect:/detaildrawmanage";
    }

    @RequestMapping("detaildrawmanage")
    public String detaildrawmanage(Model model, @SessionAttribute("userId") Long userId) throws CloneNotSupportedException {
        User user = udao.findOne(userId);
        Iterable<DetailDraw> detailDraws = ddDao.findAllByIsLock(0);
        detailDraws.forEach(
                x -> {
                    x.setQuestions(ddqDao.findAllByDds(x));
                }
        );
        List<DetailDraw> detailDraws1 = new ArrayList<>();
        for (DetailDraw dd : detailDraws) {
            if (dd.getQuestions().size() > 0) {
                for (DetailDrawQuestion question : dd.getQuestions()) {
                    DetailDraw d = (DetailDraw) dd.clone();
                    detailDraws1.add(createDetailDraw(d, question));
                }
            } else
                detailDraws1.add(createDetailDraw(dd, null));
        }
        model.addAttribute("detailDraws", detailDraws1);
        model.addAttribute("url", "detaildrawtable");
        model.addAttribute("user", user);
        return "book/detaildrawmanage";
    }

    @RequestMapping("detaildrawtable")
    public String detaildrawtable(Model model, @SessionAttribute("userId") Long userId, @RequestParam(value = "search", required = false) String search
    ) throws CloneNotSupportedException {
        User user = udao.findOne(userId);
        Iterable<DetailDraw> detailDraws = null;
        if (StringUtil.isEmpty(search)) {
            detailDraws = ddDao.findAllByIsLock(0);
        } else {
            System.out.println(search);
            detailDraws = ddDao.findAllByCondition(search);
        }

        detailDraws.forEach(
                x -> {
                    x.setQuestions(ddqDao.findAllByDds(x));
                }
        );
        List<DetailDraw> detailDraws1 = new ArrayList<>();
        for (DetailDraw dd : detailDraws) {
            if (dd.getQuestions().size() > 0) {
                for (DetailDrawQuestion question : dd.getQuestions()) {
                    DetailDraw d = (DetailDraw) dd.clone();
                    detailDraws1.add(createDetailDraw(d, question));
                }
            } else
                detailDraws1.add(createDetailDraw(dd, null));
        }
        model.addAttribute("detailDraws", detailDraws1);
        model.addAttribute("url", "detaildrawtable");
        model.addAttribute("user", user);

        return "book/detaildrawtable";
    }


    @RequestMapping(value = "detaildrawexport", method = RequestMethod.GET)
    public String detaildrawexport(Model model, HttpServletResponse response, @SessionAttribute("userId") Long userId, @RequestParam(value = "search", required = false) String search) throws CloneNotSupportedException {
        User user = udao.findOne(userId);
        Iterable<DetailDraw> detailDraws = null;
        if (StringUtil.isEmpty(search)) {
            detailDraws = ddDao.findAllByIsLock(0);
        } else {
            System.out.println(search);
            detailDraws = ddDao.findAllByCondition(search);
        }

        detailDraws.forEach(
                x -> {
                    x.setQuestions(ddqDao.findAllByDds(x));
                }
        );
        List<DetailDraw> detailDraws1 = new ArrayList<>();
        for (DetailDraw dd : detailDraws) {
            if (dd.getQuestions().size() > 0) {
                for (DetailDrawQuestion question : dd.getQuestions()) {
                    DetailDraw d = (DetailDraw) dd.clone();
                    detailDraws1.add(createDetailDraw(d, question));
                }
            } else
                detailDraws1.add(createDetailDraw(dd, null));
        }
        model.addAttribute("detailDraws", detailDraws1);
        Map<String, Object> datas = new HashMap<>();
        List<DetailDraw> detailDraws11 = new ArrayList<>(detailDraws1);
        int index = 1;
        for (DetailDraw dd : detailDraws11) {
            dd.setSerialNumber(index + "");
            index += 1;
        }

        datas.put("detailDraws", detailDraws11);

        if (detailDraws1.size() > 0) {
            ExportExcel.exportFile(response, "现场设计室图纸细化管理台账" + new Date().getTime(), "template2.ftl", datas);
        }

//        model.addAttribute("page", threeBookPage);
        model.addAttribute("url", "detaildrawtable");
        model.addAttribute("user", user);
        return "book/detaildrawmanage";
    }

    private DetailDraw createDetailDraw(DetailDraw dd, DetailDrawQuestion question) {
        if (question != null) {
            dd.setProblemDescription(question.getProblemDescription());
            dd.setProblemCount(question.getProblemCount());
            dd.setHandleMethod(question.getHandleMethod());
            dd.setProcessOrderNumber(question.getProcessOrderNumber());
            dd.setRemarks(question.getRemarks());
        } else {
            dd.setProblemDescription("/");
            dd.setProblemCount("/");
            dd.setHandleMethod("/");
            dd.setProcessOrderNumber("/");
            dd.setRemarks("/");
        }
        return dd;

    }

    @RequestMapping("details")
    public ModelAndView chaDetail(@SessionAttribute("userId") Long userId, @RequestParam(value = "page", defaultValue = "0") int page,
                                  @RequestParam(value = "size", defaultValue = "10") int size,
                                  @RequestParam(value = "title", required = false) String title,
                                  @RequestParam(value = "qufen", required = false) String qufen) {

        Sort sort = new Sort(new Sort.Order(Sort.Direction.ASC, "bookId"));
        Pageable pa = new PageRequest(page, size, sort);
        Page<DetailDraw> detailDraws = null;
        if (StringUtil.isEmpty(title)) {
            detailDraws = ddDao.findAllByIsLock(0, pa);
        } else {
            System.out.println(title);
            detailDraws = ddDao.findnamelike(title, pa);
        }
        ModelAndView mav = new ModelAndView("common/details");
        mav.addObject("details", detailDraws.getContent());
        mav.addObject("page2", detailDraws);
        mav.addObject("url2", "details");
        return mav;
    }

}
