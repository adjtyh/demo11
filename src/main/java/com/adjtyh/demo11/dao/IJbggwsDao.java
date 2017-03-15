package com.adjtyh.demo11.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.adjtyh.demo11.entity.Jbggws;

@Repository
public interface IJbggwsDao {
	
	public List<Jbggws> selectByI1(@Param("i1")int i1);
	public Jbggws selectByDate(@Param("date")Date date);
	public int getRowCount();
	public List<Jbggws> getTable();
	public int addItem(@Param("jbggws")Jbggws jbggws);
	public int updateItem(@Param("jbggws")Jbggws jbggws);
	public int delItem(@Param("jId")int jId);
	public Jbggws selectByJId(@Param("jId")int jId);
	
}
