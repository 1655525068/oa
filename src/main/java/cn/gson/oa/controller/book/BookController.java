package cn.gson.oa.controller.book;

import cn.gson.oa.model.entity.book.ThreeBook;
import cn.gson.oa.services.book.BookServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/")
public class BookController {

    @Autowired
    private BookServices bookServices;

    @RequestMapping("getAllExcel")
    public void getAllExcel() {
        Iterable<ThreeBook> books = bookServices.getAllThreebook();
        books.forEach(System.out::println);
    }

    @RequestMapping("getExcel")
    public void getExcel(HttpServletRequest request) {
        Iterable<ThreeBook> books = bookServices.getThreeBookByPrepared("冉英男");
        books.forEach(System.out::println);
    }

}
