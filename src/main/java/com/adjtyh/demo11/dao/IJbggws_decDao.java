package com.adjtyh.demo11.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.adjtyh.demo11.entity.AddUser;
import com.adjtyh.demo11.entity.Jbggws_dec;
import com.adjtyh.demo11.entity.UserMaster;

@Repository
public interface IJbggws_decDao {

	public int getRowCount();
	public List<Jbggws_dec> getTable();
	
}
