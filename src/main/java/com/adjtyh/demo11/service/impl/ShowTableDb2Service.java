package com.adjtyh.demo11.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.adjtyh.demo11.dao.IAddUserDao;
import com.adjtyh.demo11.dao.IUserMasterDao;
import com.adjtyh.demo11.entity.AddUser;
import com.adjtyh.demo11.entity.PageParam2;
import com.adjtyh.demo11.entity.UserMaster;
@Service
public class ShowTableDb2Service {
	@Resource
	IAddUserDao dao ;
	
	public int getRowCount() {
		return dao.getRowCount();
	}

	public PageParam2 getIpListByPage(PageParam2 pageParam) {
		int currPage = pageParam.getCurrPage();
		// limit offset, size
		int offset = (currPage - 1) * pageParam.pageSize ;
		int size = pageParam.pageSize;
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("offset", offset);
		params.put("size", size);
		
		List<AddUser> userList = dao.getTable();
		pageParam.setData(userList);
		
		return pageParam;
	}

	public String printUser(Integer uId, String uName, Integer uAge) {
		//int size = 100;
//		try {
//			size = uId;
//		} catch (Exception e) {
//		}
//		Map<String, Object> params = new HashMap<String, Object>();
//		params.put("uId", uId);
//		params.put("uName", uName);
//		params.put("uAge", uAge);
//		
//		List<UserMaster> ipList = dao.fetchByParams(params);
//		StringBuilder sBuilder = new StringBuilder();
//		for (UserMaster user : ipList) {
//			sBuilder.append(user.toString());
//			sBuilder.append("\r\n");
//		}
//		
//		return sBuilder.toString();
		return "";
	}
}
