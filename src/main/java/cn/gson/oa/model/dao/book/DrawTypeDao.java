package cn.gson.oa.model.dao.book;


import cn.gson.oa.model.entity.book.DrawType;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface DrawTypeDao extends PagingAndSortingRepository<DrawType, Long> {
    @Query("select dt from DrawType as dt where dt.dtName like %?1%")
    Iterable<DrawType> findAllByLikeDtName(@Param("dtName") String dtName);

    @Query("select dt from DrawType as dt where dt.dtName=?1")
    Iterable<DrawType> findAllByDtName(@Param("dtName") String dtName);

    DrawType findByDtId(Long dtId);

}
