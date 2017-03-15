package com.adjtyh.demo11.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.instrument.classloading.ShadowingClassLoader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.adjtyh.demo11.entity.PageParam;
import com.adjtyh.demo11.entity.PageParam2;
import com.adjtyh.demo11.service.impl.ShowTableDb2Service;
import com.adjtyh.demo11.service.impl.ShowTableService;

@Controller
public class ShowTableDb2Controller {
	@Resource
	ShowTableService service;
	
	@RequestMapping("showTableDb2")
	public String doShowTable(HttpServletRequest request){
		String currPageStr = request.getParameter("page");
		int currPage = 1;
		try {
			currPage = Integer.parseInt(currPageStr);
		} catch (Exception e) {
		}
		
		// 获取总记录数
		int rowCount = service.getRowCount();
		System.out.println(rowCount);
		PageParam2 pageParam = new PageParam2();
		pageParam.setRowCount(rowCount);
		if (pageParam.getTotalPage() < currPage) {
			currPage = pageParam.getTotalPage();
		}
		pageParam.setCurrPage(currPage);
		pageParam = service.getIpListByPage(pageParam);
		
		request.setAttribute("pageParam", pageParam);
//		System.out.println(pageParam.getData().toString());
		return "showTable";
	}
	
}
