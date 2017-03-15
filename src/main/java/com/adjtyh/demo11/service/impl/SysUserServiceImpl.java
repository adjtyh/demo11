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

import com.adjtyh.demo11.dao.ISysUserDao;
import com.adjtyh.demo11.entity.SysUser;
import com.adjtyh.demo11.service.ISysUserService;
import com.mysql.jdbc.Statement;

@Service
public class SysUserServiceImpl implements ISysUserService {

	@Resource
	ISysUserDao dao ;
	
	@Resource
	JdbcTemplate jdbcTemplate;

	@Transactional
	public void saveWithJDBC(final String uName, final int uAge) {
		final String sql = "insert into sys_user(uName, uAge) values(?,?)";
		// jdbcTemplate.update(sql, new Object[]{uName, uAge});
		
		KeyHolder key = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
			
			public PreparedStatement createPreparedStatement(Connection con)
					throws SQLException {
				PreparedStatement statement = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
				statement.setString(1, uName );
				statement.setInt(2, uAge);
				return statement;
			}
		}, key);
		
		System.out.println(key.getKey().intValue());
		
	}

	public SysUser selectByIdWithJDBC(int uId) {
		String sql = "select * from sys_user where uId=?";
		final SysUser user = new SysUser();
		jdbcTemplate.query(sql, new Object[]{uId}, new RowCallbackHandler(){
			public void processRow(ResultSet rs) throws SQLException {
				user.setuName(rs.getString("uName"));
				user.setuAge(rs.getInt("uAge"));
			}
		});
		user.setuId(uId);
		return user;
	}

	public List<SysUser> selectAllWithJDBC() {
		String sql = "SELECT * from sys_user";
		final List<SysUser> userList = new ArrayList<SysUser>();
		jdbcTemplate.query(sql, new RowCallbackHandler() {
			public void processRow(ResultSet rs) throws SQLException {
				SysUser user = new SysUser();
				user.setuName(rs.getString("uName"));
				user.setuAge(rs.getInt("uAge"));
				user.setuId(rs.getInt("uId"));
				userList.add(user);
			}
		});
		return userList;
	}

	@Transactional
	public void deleteByIdWithJDBC(int uId) {
		String sql = "DELETE from sys_user where uId=?";
		jdbcTemplate.update(sql, uId);
	}

	@Transactional
	public void saveWithMybatis(String uName, int uAge) {
		SysUser user = new SysUser();
		user.setuName(uName);
		user.setuAge(uAge);
		dao.save(user);
	}

	public SysUser selectByIdWithMybatis(int uId) {
		return dao.selectById(uId);
	}

	public List<SysUser> selectAllWithMybatis() {
		return dao.selectAll();
	}

	@Transactional
	public void deleteByIdWithMybatis(int uId) {
		dao.deleteById(uId);
	}
	
	
	
}
