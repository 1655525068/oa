package cn.gson.oa.model.dao.processdao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oa.model.entity.process.Holiday;
import cn.gson.oa.model.entity.process.ProcessList;

public interface HolidayDao extends PagingAndSortingRepository<Holiday, Long>{

	Holiday findByProId(ProcessList pro);

}
