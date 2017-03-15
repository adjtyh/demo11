package com.adjtyh.demo11.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.adjtyh.demo11.entity.Mzgzlb;

@Repository
public interface IMzgzlbDao {
	
	public List<Mzgzlb> selectByI1(@Param("i1")int i1);
	public Mzgzlb selectByDate(@Param("date")Date date);
	public int getRowCount();
	public List<Mzgzlb> getTable();
	public int addItem(@Param("mzgzlb")Mzgzlb mzgzlb);
	public int updateItem(@Param("mzgzlb")Mzgzlb mzgzlb);
	public int delItem(@Param("mId")int mId);
	public Mzgzlb selectByJId(@Param("mId")int mId);
	
}
