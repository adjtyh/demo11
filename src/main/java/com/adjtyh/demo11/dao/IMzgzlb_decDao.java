package com.adjtyh.demo11.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.adjtyh.demo11.entity.Mzgzlb_dec;

@Repository
public interface IMzgzlb_decDao {

	public int getRowCount();
	public List<Mzgzlb_dec> getTable();
	
}
