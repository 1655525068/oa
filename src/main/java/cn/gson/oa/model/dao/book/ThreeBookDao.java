package cn.gson.oa.model.dao.book;


import cn.gson.oa.model.entity.book.ThreeBook;
import cn.gson.oa.model.entity.user.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ThreeBookDao extends PagingAndSortingRepository<ThreeBook, String> {

    Iterable<ThreeBook> findByPreparedBy(String preparedBy);

    ThreeBook findOneByBookId(Long bookId);

    @Query("from ThreeBook tb where tb.processPerson like %?1% or tb.identifyResponsiblePerson like %?1% or tb.threeBookNumbers like %?1% or tb.chineseName like %?1% or tb.drawVersion like %?1%")
    Page<ThreeBook> findnamelike(String name, Pageable pa);

    @Query("from ThreeBook tb where tb.isLock=:isLock")
    Page<ThreeBook> findAllByIsLock(@Param("isLock") Integer isLock, Pageable pa);

}
