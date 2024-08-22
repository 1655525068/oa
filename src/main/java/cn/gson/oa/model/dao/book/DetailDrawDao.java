package cn.gson.oa.model.dao.book;


import cn.gson.oa.model.entity.book.DetailDraw;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DetailDrawDao extends PagingAndSortingRepository<DetailDraw, String> {
    List<DetailDraw> findAllByIsLock(Integer isLock);

    DetailDraw findOneByBookId(Long bookId);

    @Query("from DetailDraw dd where dd.documentCodes like %?1% or dd.internalDocumentCodes like %?1% or dd.catalogNumber like %?1% or dd.professionalType like %?1% or dd.version like %?1% or dd.state like %?1% or dd.receivingTime like %?1% or dd.doNeedFU like %?1% or dd.planTimeFU like %?1% or dd.numberFU like %?1% or dd.planCompletionTime like %?1% or dd.responsiblePerson like %?1%")
    Page<DetailDraw> findnamelike(String name, Pageable pa);

    @Query("from DetailDraw dd where dd.isLock=:isLock")
    Page<DetailDraw> findAllByIsLock(@Param("isLock") Integer isLock, Pageable pa);

    @Query("from DetailDraw dd where dd.documentCodes like %?1% or dd.internalDocumentCodes like %?1% or dd.catalogNumber like %?1% or dd.professionalType like %?1% or dd.version like %?1% or dd.state like %?1% or dd.receivingTime like %?1% or dd.doNeedFU like %?1% or dd.planTimeFU like %?1% or dd.numberFU like %?1% or dd.planCompletionTime like %?1% or dd.responsiblePerson like %?1% order by dd.bookId ASC ")
    Iterable<DetailDraw> findAllByCondition(String name);
}
