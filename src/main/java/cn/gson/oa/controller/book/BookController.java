package cn.gson.oa.controller.book;

import cn.gson.oa.model.dao.roledao.RoleDao;
import cn.gson.oa.model.dao.system.StatusDao;
import cn.gson.oa.model.dao.system.TypeDao;
import cn.gson.oa.model.dao.user.DeptDao;
import cn.gson.oa.model.dao.user.PositionDao;
import cn.gson.oa.model.dao.user.UserDao;
import cn.gson.oa.model.entity.book.ThreeBook;
import cn.gson.oa.model.entity.role.Role;
import cn.gson.oa.model.entity.system.SystemStatusList;
import cn.gson.oa.model.entity.system.SystemTypeList;
import cn.gson.oa.model.entity.user.Dept;
import cn.gson.oa.model.entity.user.Position;
import cn.gson.oa.model.entity.user.User;
import cn.gson.oa.services.book.BookServices;
import com.github.pagehelper.util.StringUtil;
import com.github.stuxuhai.jpinyin.PinyinException;
import com.github.stuxuhai.jpinyin.PinyinFormat;
import com.github.stuxuhai.jpinyin.PinyinHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/")
public class BookController {

    @Autowired
    private BookServices bookServices;

    @Autowired
    UserDao udao;

    @RequestMapping("getExcel")
    public void getExcel(HttpServletRequest request) {
        Iterable<ThreeBook> books = bookServices.getThreeBookByPrepared("冉英男");
        books.forEach(System.out::println);
    }

    @RequestMapping("threebookmanage")
    public String usermanage(Model model, @RequestParam(value = "page", defaultValue = "0") int page,
                             @RequestParam(value = "size", defaultValue = "10") int size
    ) {
        Sort sort = new Sort(new Sort.Order(Sort.Direction.ASC, "bookId"));
        Pageable pa = new PageRequest(page, size, sort);
        Page<ThreeBook> threeBookPage = bookServices.findAllByIsLock(0, pa);
        List<ThreeBook> threeBooks = threeBookPage.getContent();
        model.addAttribute("threeBooks", threeBooks);
        model.addAttribute("page", threeBookPage);
        model.addAttribute("url", "threebookmanagepaging");
        return "book/threebookmanage";
    }

    @RequestMapping("threebookmanagepaging")
    public String userPaging(Model model, @RequestParam(value = "page", defaultValue = "0") int page,
                             @RequestParam(value = "size", defaultValue = "10") int size,
                             @RequestParam(value = "search", required = false) String search
    ) {
        Sort sort = new Sort(new Sort.Order(Sort.Direction.ASC, "bookId"));
        Pageable pa = new PageRequest(page, size, sort);
        Page<ThreeBook> threeBookPage = null;
        if (StringUtil.isEmpty(search)) {
            threeBookPage = bookServices.findAllByIsLock(0, pa);
        } else {
            System.out.println(search);
            threeBookPage = bookServices.getThreeBookByName(search, pa);
        }
        List<ThreeBook> threeBooks = threeBookPage.getContent();
        model.addAttribute("threeBooks", threeBooks);
        model.addAttribute("page", threeBookPage);
        model.addAttribute("url", "threebookmanagepaging");

        return "book/threebookmanagepaging";
    }

}
