package cn.gson.oa.model.dao.book;


import cn.gson.oa.model.entity.book.ThreeBook;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookDao extends PagingAndSortingRepository<ThreeBook, String> {

    Iterable<ThreeBook> findByPreparedBy(String preparedBy);

    ThreeBook findOneByBookId(Long bookId);
}
