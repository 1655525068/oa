package cn.gson.oa.model.dao.book;


import cn.gson.oa.model.entity.book.ThreeBook;
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

    @Query("select tb from ThreeBook tb where tb.type like %?1% or tb.threeBookNumbers like %?1% or tb.chineseName like %?1% or tb.fcrVersion like %?1% or tb.state like %?1% or tb.preparedBy like %?1% or tb.latestVersion like %?1% or tb.receivingTime like %?1% or tb.distributionTime like %?1% or tb.invalidIdentification like %?1% or tb.relatedDocumentCodes like %?1% or tb.internalCodes like %?1% or tb.drawVersion like %?1% or tb.professionalType like %?1% or tb.responsibleParty like %?1% or tb.identifyResponsiblePerson like %?1% or tb.processPerson like %?1% or tb.processResponsibleParty like %?1% or tb.shouldClaim like %?1% or tb.planToCloseTime like %?1% or tb.actualCloseTime like %?1% or tb.designPointValue like %?1% or tb.auditPointValue like %?1% order by tb.bookId ASC ")
    Iterable<ThreeBook> findAllByCondition(String name);

}
