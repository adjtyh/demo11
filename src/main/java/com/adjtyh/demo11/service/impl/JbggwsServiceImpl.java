package com.adjtyh.demo11.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
//import org.apache.jasper.compiler.Node.DoBodyAction;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.adjtyh.demo11.dao.IAddUserDao;
import com.adjtyh.demo11.dao.IJbggwsDao;
import com.adjtyh.demo11.dao.IJbggws_decDao;
import com.adjtyh.demo11.dao.ISysUserDao;
import com.adjtyh.demo11.entity.AddUser;
import com.adjtyh.demo11.entity.Jbggws;
import com.adjtyh.demo11.entity.Jbggws_dec;
import com.adjtyh.demo11.entity.SysUser;
import com.adjtyh.demo11.entity.TestUser;
import com.adjtyh.demo11.service.ISysUserService;
import com.mysql.jdbc.Statement;

@Service
public class JbggwsServiceImpl{

	@Resource
	IJbggwsDao dao ;
	
	public List<Jbggws> selectByI1(int i1)
	{
		return dao.selectByI1(i1);
	}
	
	public Jbggws selectByDate(Date date)
	{
		return dao.selectByDate(date);
	}

	
	public List<Jbggws> getTable() {
		return dao.getTable();
	}
	
	public int getRowCount(){
		return dao.getRowCount();
	}
	
	public int addItem(Jbggws jbggws){
		return dao.addItem(jbggws);
	}
	
	public int updateItem(Jbggws jbggws) {
		return dao.updateItem(jbggws);
	}

	public int delItem(int jId){
		return dao.delItem(jId);
	}

	public List<Jbggws> getTableById(int i1) {
		List<Jbggws> result=null;
		if(i1==0){
			result = dao.getTable();
		}else {
			result=dao.selectByI1(i1);
		}
		return result;
	}

	public Jbggws getTableByJId(int jId) {
		
		return dao.selectByJId(jId);
	}
	
}
