package com.adjtyh.demo11.service;

import java.util.List;

import com.adjtyh.demo11.entity.SysUser;

public interface ISysUserService {

	public void saveWithJDBC(String uName, int uage );
	public SysUser selectByIdWithJDBC(int uId );
	public List<SysUser> selectAllWithJDBC();
	public void deleteByIdWithJDBC(int uId );

	public void saveWithMybatis(String uName, int uage );
	public SysUser selectByIdWithMybatis(int uId );
	public List<SysUser> selectAllWithMybatis();
	public void deleteByIdWithMybatis(int uId );
	
}
