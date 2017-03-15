package com.adjtyh.demo11.entity;

import java.util.List;

import com.adjtyh.demo11.entity.SysUser;

public class PageParamJbggws_dec {

	private int rowCount ; // 总记录数
	
	private List<Jbggws_dec> data ; // 数据

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public List<Jbggws_dec> getData() {
		return data;
	}

	public void setData(List<Jbggws_dec> data) {
		this.data = data;
	}

	
	
}
