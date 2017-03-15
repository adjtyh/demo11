package com.adjtyh.demo11.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.adjtyh.demo11.entity.SysUser;

@Repository
public interface ISysUserDao {

	public void save(SysUser user);
	public SysUser selectById(int id );
	public void deleteById(int id);
	public List<SysUser> selectAll();
	
	public int getRowCount();
	public List<SysUser> selectByParams(Map<String, Object> params);
	public List<SysUser> fetchByParams(Map<String, Object> params);
	
}
