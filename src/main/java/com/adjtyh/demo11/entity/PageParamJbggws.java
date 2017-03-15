package com.adjtyh.demo11.entity;

import java.util.List;

import com.adjtyh.demo11.entity.SysUser;

public class PageParamJbggws {

	private int rowCount ; // 总记录数
	
	private List<Jbggws> data ; // 数据

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public List<Jbggws> getData() {
		return data;
	}

	public void setData(List<Jbggws> data) {
		this.data = data;
	}

	
	
}
