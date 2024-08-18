package cn.gson.oa.model.entity.excel;

import cn.gson.oa.model.entity.excel.Cell;
import lombok.Data;

import java.util.List;

@Data
public class Row {

	private Integer height;

	private List<Cell> cells;

	private Integer index;

}
