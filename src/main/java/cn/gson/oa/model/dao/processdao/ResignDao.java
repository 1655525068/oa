package cn.gson.oa.model.dao.processdao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oa.model.entity.process.ProcessList;
import cn.gson.oa.model.entity.process.Resign;

public interface ResignDao extends PagingAndSortingRepository<Resign, Long>{

	Resign findByProId(ProcessList process);

}
