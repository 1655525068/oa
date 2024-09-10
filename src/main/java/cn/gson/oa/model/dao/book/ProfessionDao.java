package cn.gson.oa.model.dao.book;


import cn.gson.oa.model.entity.book.Profession;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProfessionDao extends PagingAndSortingRepository<Profession, Long> {
    @Query("select pro from Profession as pro where pro.proName like %?1%")
    Iterable<Profession> findAllByLikeProName(@Param("proName") String proName);

    @Query("select pro from Profession as pro where pro.proName=?1")
    Iterable<Profession> findAllByProName(@Param("proName") String proName);

    Profession findByProId(Long proId);

}
