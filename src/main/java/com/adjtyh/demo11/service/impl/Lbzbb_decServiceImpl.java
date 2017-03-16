package com.adjtyh.demo11.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.adjtyh.demo11.dao.ILbzbb_decDao;
import com.adjtyh.demo11.entity.Lbzbb_dec;


@Service
public class Lbzbb_decServiceImpl{

	@Resource
	ILbzbb_decDao dao ;
	
	
	public List<Lbzbb_dec> getTable() {
		return dao.getTable();
	}
	
	public int getRowCount(){
		return dao.getRowCount();
	}
	
	
}
