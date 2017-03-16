package com.adjtyh.demo11.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.adjtyh.demo11.entity.Lbzbb;

@Repository
public interface ILbzbbDao {
	
	public List<Lbzbb> selectByI1(@Param("i1")int i1);
	public Lbzbb selectByDate(@Param("date")Date date);
	public int getRowCount();
	public List<Lbzbb> getTable();
	public int addItem(@Param("lbzbb")Lbzbb lbzbb);
	public int updateItem(@Param("lbzbb")Lbzbb lbzbb);
	public int delItem(@Param("lId")int lId);
	public Lbzbb selectByJId(@Param("lId")int lId);
	
}
