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
import com.adjtyh.demo11.dao.ILbzbbDao;
import com.adjtyh.demo11.dao.ILbzbb_decDao;
import com.adjtyh.demo11.dao.ISysUserDao;
import com.adjtyh.demo11.entity.AddUser;
import com.adjtyh.demo11.entity.Lbzbb;
import com.adjtyh.demo11.entity.Lbzbb_dec;
import com.adjtyh.demo11.entity.SysUser;
import com.adjtyh.demo11.entity.TestUser;
import com.adjtyh.demo11.service.ISysUserService;
import com.mysql.jdbc.Statement;

@Service
public class LbzbbServiceImpl{

	@Resource
	ILbzbbDao dao ;
	
	public List<Lbzbb> selectByI1(int i1)
	{
		return dao.selectByI1(i1);
	}
	
	public Lbzbb selectByDate(Date date)
	{
		return dao.selectByDate(date);
	}

	
	public List<Lbzbb> getTable() {
		return dao.getTable();
	}
	
	public int getRowCount(){
		return dao.getRowCount();
	}
	
	public int addItem(Lbzbb lbzbb){
		return dao.addItem(lbzbb);
	}
	
	public int updateItem(Lbzbb lbzbb) {
		return dao.updateItem(lbzbb);
	}

	public int delItem(int mId){
		return dao.delItem(mId);
	}

	public List<Lbzbb> getTableById(int i1) {
		List<Lbzbb> result=null;
		if(i1==0){
			result = dao.getTable();
		}else {
			result=dao.selectByI1(i1);
		}
		return result;
	}

	public Lbzbb getTableByJId(int mId) {
		
		return dao.selectByJId(mId);
	}
	
}
