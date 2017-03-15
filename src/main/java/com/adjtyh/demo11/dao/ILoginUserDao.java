package com.adjtyh.demo11.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.adjtyh.demo11.entity.AddUser;
import com.adjtyh.demo11.entity.LoginUser;
import com.adjtyh.demo11.entity.UserMaster;

@Repository
public interface ILoginUserDao {

	public LoginUser selectByuName(String uName);
	public int getRowCount();
	public List<LoginUser> getTable();
	public int addItem(LoginUser loginUser);
	public int updateItem(LoginUser loginUser);
	public int delItem(String uName);
	
}
