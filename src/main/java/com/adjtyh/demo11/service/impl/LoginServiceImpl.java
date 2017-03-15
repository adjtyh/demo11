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
import com.adjtyh.demo11.entity.AddUser;
import com.adjtyh.demo11.entity.Jbggws;
import com.adjtyh.demo11.entity.Jbggws_dec;
import com.adjtyh.demo11.entity.LoginUser;
import com.adjtyh.demo11.entity.SysUser;
import com.adjtyh.demo11.entity.TestUser;
import com.adjtyh.demo11.service.ISysUserService;
import com.mysql.jdbc.Statement;

@Service
public class LoginServiceImpl{

	@Resource
	ILoginUserDao dao ;
	
	private String errorMsg;
	private int uLevel;

	public int getuLevel() {
		return uLevel;
	}

	public void setuLevel(int uLevel) {
		this.uLevel = uLevel;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

	public boolean doLogin(String uName, String uPassword) {
		LoginUser loginUser = dao.selectByuName(uName);
		if(loginUser!=null){
			if(loginUser.uPassword.equals(uPassword)){
				uLevel = loginUser.getuLevel();
				return true;
			}else {
				errorMsg="密码错误！";
			}
		}else {
			errorMsg="用户名不存在！";
		}
		return false;
	}
	
	
	
	
}
