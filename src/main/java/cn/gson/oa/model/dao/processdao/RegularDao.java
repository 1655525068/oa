package cn.gson.oa.model.dao.processdao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oa.model.entity.process.ProcessList;
import cn.gson.oa.model.entity.process.Regular;

public interface RegularDao extends PagingAndSortingRepository<Regular, Long>{

	Regular findByProId(ProcessList pro);

}
