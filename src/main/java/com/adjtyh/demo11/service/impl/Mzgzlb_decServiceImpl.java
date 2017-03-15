package com.adjtyh.demo11.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.adjtyh.demo11.dao.IMzgzlb_decDao;
import com.adjtyh.demo11.entity.Mzgzlb_dec;


@Service
public class Mzgzlb_decServiceImpl{

	@Resource
	IMzgzlb_decDao dao ;
	
	
	public List<Mzgzlb_dec> getTable() {
		return dao.getTable();
	}
	
	public int getRowCount(){
		return dao.getRowCount();
	}
	
	
}
