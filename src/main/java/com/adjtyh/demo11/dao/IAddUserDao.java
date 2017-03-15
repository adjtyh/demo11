package com.adjtyh.demo11.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.adjtyh.demo11.entity.AddUser;
import com.adjtyh.demo11.entity.UserMaster;

@Repository
public interface IAddUserDao {

	public int getRowCount();
	public List<AddUser> getTable();
	public List<AddUser> selectByParams(Map<String, Object> params);
	public AddUser selectByUName(String uName);
	
}
