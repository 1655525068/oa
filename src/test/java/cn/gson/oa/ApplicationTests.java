package cn.gson.oa;

import org.springframework.beans.factory.annotation.Autowired;

import cn.gson.oa.mappers.NoticeMapper;
import cn.gson.oa.services.inform.InformService;

//@RunWith(SpringRunner.class)
//@SpringBootTest
public class 	ApplicationTests {
	
	@Autowired
	private NoticeMapper nm;
	
	@Autowired
	private InformService informService;
	
	

		
//		List<Map<String, Object>> list=informService.informList(listOne);
//		for (Map<String, Object> map : list) {
//			System.out.println(map);
//		}

	
	

}
