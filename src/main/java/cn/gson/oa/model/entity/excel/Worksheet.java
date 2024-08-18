package cn.gson.oa.model.entity.excel;

import cn.gson.oa.model.entity.excel.Table;
import lombok.Data;

@Data
public class Worksheet {

	private String Name;

	private Table table;

}
