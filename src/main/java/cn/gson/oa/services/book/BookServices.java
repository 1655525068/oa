package cn.gson.oa.services.book;

import cn.gson.oa.model.dao.book.ThreeBookDao;
import cn.gson.oa.model.entity.book.ThreeBook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class BookServices {
    @Autowired
    private ThreeBookDao threeBookDao;

    public Iterable<ThreeBook> getAllThreebook() {
        return threeBookDao.findAll();
    }

    public Iterable<ThreeBook> getThreeBookByPrepared(String preparedBy) {
        return threeBookDao.findByPreparedBy(preparedBy);
    }

    public Page<ThreeBook> getThreeBookByName(String name, Pageable pa) {
        return threeBookDao.findnamelike(name, pa);
    }

    public Page<ThreeBook> findAllByIsLock(Integer isLock, Pageable pa) {
        return threeBookDao.findAllByIsLock(isLock, pa);
    }
}
