package com.adjtyh.demo11.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.adjtyh.demo11.entity.AddUser;
import com.adjtyh.demo11.entity.ZhanDian;
import com.adjtyh.demo11.entity.UserMaster;


@Repository
public interface IZhanDianDao {

	public ZhanDian selectByzAbbreviation(String Abbreviation);
	public int getRowCount();
	public List<ZhanDian> getTable();
	public int addItem(ZhanDian zhanDian);
	public int updateItem(ZhanDian zhanDian);
	public int delItem(int zId);
	
}
