package cn.gson.oa.model.dao.book;


import cn.gson.oa.model.entity.book.DetailDraw;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetailDrawDao extends PagingAndSortingRepository<DetailDraw, String> {


}
