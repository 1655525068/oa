package cn.gson.oa.model.dao.processdao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oa.model.entity.process.Overtime;
import cn.gson.oa.model.entity.process.ProcessList;

public interface OvertimeDao extends PagingAndSortingRepository<Overtime, Long>{

	Overtime findByProId(ProcessList pro);

}
