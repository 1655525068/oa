package cn.gson.oa.services.book;

import cn.gson.oa.model.dao.book.BookDao;
import cn.gson.oa.model.entity.book.ThreeBook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServices {
    @Autowired
    private BookDao bookDao;

    public Iterable<ThreeBook> getAllThreebook(){
        return bookDao.findAll();
    }

    public Iterable<ThreeBook> getThreeBookByPrepared(String preparedBy){
        return bookDao.findByPreparedBy(preparedBy);
    }
}
