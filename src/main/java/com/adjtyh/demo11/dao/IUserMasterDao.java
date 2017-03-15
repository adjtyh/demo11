package com.adjtyh.demo11.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.adjtyh.demo11.entity.UserMaster;

@Repository
public interface IUserMasterDao {

	public int getRowCount();
	public List<UserMaster> selectByParams(Map<String, Object> params);
	public List<UserMaster> selectByUmName(String um_name);
	
}
