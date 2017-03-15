package com.adjtyh.demo11.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.adjtyh.demo11.dao.IAddUserDao;
import com.adjtyh.demo11.dao.ISysUserDao;
import com.adjtyh.demo11.entity.AddUser;
import com.adjtyh.demo11.entity.SysUser;
import com.adjtyh.demo11.entity.TestUser;
import com.adjtyh.demo11.service.ISysUserService;
import com.mysql.jdbc.Statement;

@Service
public class TestOutPutServiceImpl{

	@Resource
	IAddUserDao dao ;
	
	public AddUser selectByUName(String uName) {
		return dao.selectByUName(uName);
	}
	
	public List<AddUser> getTable() {
		return dao.getTable();
	}
	
	
}
