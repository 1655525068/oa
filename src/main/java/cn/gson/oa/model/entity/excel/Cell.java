package cn.gson.oa.model.entity.excel;

import cn.gson.oa.model.entity.excel.Comment;
import cn.gson.oa.model.entity.excel.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Cell {

	private String styleID;

	private Integer mergeAcross;

	private Integer MergeDown;

	private Data data;

	private Integer index;

	private Comment comment;

}
