package cn.gson.oa.model.dao.book;

import cn.gson.oa.model.entity.book.ThreeBook;
import cn.gson.oa.model.entity.book.ThreeBookProcess;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ThreeBookProcessDao extends PagingAndSortingRepository<ThreeBookProcess, String> {
    List<ThreeBookProcess> findAllByTbs(ThreeBook threeBook);

    ThreeBookProcess findByAndTbId(String tbId);
}
