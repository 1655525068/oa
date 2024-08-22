package cn.gson.oa.model.dao.book;

import cn.gson.oa.model.entity.book.DetailDraw;
import cn.gson.oa.model.entity.book.DetailDrawQuestion;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DetailDrawQuestionDao extends PagingAndSortingRepository<DetailDrawQuestion, String> {
    List<DetailDrawQuestion> findAllByDds(DetailDraw detailDraw);

    DetailDrawQuestion findByDdId(Long ddId);
}
