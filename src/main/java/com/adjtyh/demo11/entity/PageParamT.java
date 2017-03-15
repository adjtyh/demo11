package com.adjtyh.demo11.entity;

import java.util.List;

import com.adjtyh.demo11.entity.SysUser;

public class PageParamT<T> {

	private int rowCount ; // 总记录数
	
	private List<T> data ; // 数据

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	
	
}
