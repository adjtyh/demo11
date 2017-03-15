package com.adjtyh.demo11.controller;

import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.format.Printer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.adjtyh.demo11.entity.AddUser;
import com.adjtyh.demo11.entity.Jbggws;
import com.adjtyh.demo11.entity.Jbggws_dec;
import com.adjtyh.demo11.entity.PageParam;
import com.adjtyh.demo11.entity.PageParam2;
import com.adjtyh.demo11.entity.PageParamJbggws;
import com.adjtyh.demo11.entity.PageParamJbggws_dec;
import com.adjtyh.demo11.service.impl.JbggwsServiceImpl;
import com.adjtyh.demo11.service.impl.Jbggws_decServiceImpl;
import com.adjtyh.demo11.service.impl.ShowTableService;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

@Controller
public class AddJbggwsController {

	@Resource
	HttpServletRequest request;
	
	@Resource
	Jbggws_decServiceImpl jbggws_decservice;
	
	@Resource
	JbggwsServiceImpl jbggwsservice;

	@RequestMapping("addJbggws")
	public String dojbggws_dec(HttpServletRequest request){

		PageParamJbggws_dec pageParamJbggws = new PageParamJbggws_dec();
		// 获取总记录数
		int rowCount = jbggws_decservice.getRowCount();
		pageParamJbggws.setData(jbggws_decservice.getTable());
		pageParamJbggws.setRowCount(rowCount);
		//List<AddUser> userList = service.getTable();
		request.setAttribute("pageParamJbggws", pageParamJbggws);
		request.setAttribute("rowCount", rowCount);
		//request.setAttribute("userList", userList);
		System.out.println("跳转去addJbggws");
		return "addJbggws";
	}

	
	
}
