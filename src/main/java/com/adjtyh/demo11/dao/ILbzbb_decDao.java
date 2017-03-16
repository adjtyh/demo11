package com.adjtyh.demo11.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.adjtyh.demo11.entity.Lbzbb_dec;

@Repository
public interface ILbzbb_decDao {

	public int getRowCount();
	public List<Lbzbb_dec> getTable();
	
}
