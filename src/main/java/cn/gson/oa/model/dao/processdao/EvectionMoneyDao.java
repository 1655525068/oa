package cn.gson.oa.model.dao.processdao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oa.model.entity.process.EvectionMoney;
import cn.gson.oa.model.entity.process.ProcessList;

public interface EvectionMoneyDao extends PagingAndSortingRepository<EvectionMoney, Long>{

	EvectionMoney findByProId(ProcessList pro);
}
