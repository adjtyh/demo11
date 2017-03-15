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
import com.adjtyh.demo11.dao.ILoginUserDao;
import com.adjtyh.demo11.dao.ISysUserDao;
import com.adjtyh.demo11.dao.IZhanDianDao;
import com.adjtyh.demo11.entity.AddUser;
import com.adjtyh.demo11.entity.Jbggws;
import com.adjtyh.demo11.entity.Jbggws_dec;
import com.adjtyh.demo11.entity.LoginUser;
import com.adjtyh.demo11.entity.SysUser;
import com.adjtyh.demo11.entity.TestUser;
import com.adjtyh.demo11.entity.ZhanDian;
import com.adjtyh.demo11.service.ISysUserService;
import com.mysql.jdbc.Statement;

@Service
public class ZhanDianServiceImpl{

	@Resource
	IZhanDianDao dao ;
	
	public ZhanDian selectByzAbbreviation(String zAbbreviation){
		return dao.selectByzAbbreviation(zAbbreviation);
	}
	public int getRowCount(){
		return dao.getRowCount();
	}
	public List<ZhanDian> getTable(int uLevel,String zAbbreviation){
//		if(uLevel<=1){
//			return dao.getTable();
//		}
//		ZhanDian zhanDian = dao.selectByzAbbreviation(zAbbreviation);
//		List<ZhanDian> zhanDians = new ArrayList<ZhanDian>();
//		zhanDians.add(zhanDian);
//		return zhanDians;
		return dao.getTable();
	}

	public int addItem(ZhanDian zhanDian){
		return dao.addItem(zhanDian);
	}
	public int updateItem(ZhanDian zhanDian){
		return dao.updateItem(zhanDian);
	}
	public int delItem(int zId){
		return dao.delItem(zId);
	}
	
	
	
}
