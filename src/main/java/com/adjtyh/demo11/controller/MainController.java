package com.adjtyh.demo11.controller;

import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.adjtyh.demo11.entity.PageParamT;
import com.adjtyh.demo11.entity.ZhanDian;
import com.adjtyh.demo11.service.impl.JbggwsServiceImpl;
import com.adjtyh.demo11.service.impl.Jbggws_decServiceImpl;
import com.adjtyh.demo11.service.impl.ShowTableService;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

@Controller
public class MainController {

	@Resource
	HttpServletRequest request;
	
	@Resource
	Jbggws_decServiceImpl jbggws_decservice;
	
	@Resource
	JbggwsServiceImpl jbggwsservice;
	
	

	@RequestMapping("doMain1")
	public String doMain1(){
		//caozuoSet 1:sel;2:add;3:update;4:del
		//System.out.println("doMain1获取caozuoSet="+request.getParameter("caozuoSet"));
		//int caozuoSet = Integer.parseInt(request.getParameter("caozuoSet")) ;
		
		PageParamJbggws pageParamJbggws = new PageParamJbggws();
		// 获取总记录数
		int rowCount = 0;
		rowCount = jbggwsservice.getRowCount();
		int selectedStationId = Integer.parseInt(request.getParameter("selectStationIndex")); 
		pageParamJbggws.setData(jbggwsservice.getTableById(selectedStationId));
		pageParamJbggws.setRowCount(pageParamJbggws.getData().size());
		//List<AddUser> userList = service.getTable();
		request.setAttribute("pageParamJbggws", pageParamJbggws);
		request.setAttribute("rowCount", pageParamJbggws.getRowCount());
		System.out.println("返回行数："+pageParamJbggws.getRowCount());
		//request.setAttribute("userList", userList);

		return "main1";
	}
	
	@RequestMapping("caoZuoTable")
	public String caoZuoTable(){
		

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
		
		return "caoZuoTable";
	}

	@RequestMapping("lookJbggws")
	public String lookJbggws(){

		PageParamJbggws_dec pageParamJbggws = new PageParamJbggws_dec();
		
		int jId = Integer.parseInt(request.getParameter("jId"));
		System.out.println("得到jId:"+jId);
		// 获取总记录数
		int rowCount = jbggws_decservice.getRowCount();
		pageParamJbggws.setData(jbggws_decservice.getTable());
		pageParamJbggws.setRowCount(rowCount);
		
		Jbggws jbggws = jbggwsservice.getTableByJId(jId);
		
		//List<AddUser> userList = service.getTable();
		request.setAttribute("pageParamJbggws", pageParamJbggws);
		request.setAttribute("jbggws", jbggws);
		request.setAttribute("rowCount", rowCount);
		request.setAttribute("zhanDianzName", getZhanDianzName(jbggws.getItem1(), request));
		
		//request.setAttribute("userList", userList);
		System.out.println("跳转去lookJbggws");
		
		return "lookJbggws";
	}
	
	@RequestMapping("updateJbggws")
	public String updateJbggws(){

		PageParamJbggws_dec pageParamJbggws = new PageParamJbggws_dec();
		
		int jId = Integer.parseInt(request.getParameter("jId"));
		System.out.println("得到jId:"+jId);
		// 获取总记录数
		int rowCount = jbggws_decservice.getRowCount();
		pageParamJbggws.setData(jbggws_decservice.getTable());
		pageParamJbggws.setRowCount(rowCount);
		
		Jbggws jbggws = jbggwsservice.getTableByJId(jId);
		
		//List<AddUser> userList = service.getTable();
		request.setAttribute("pageParamJbggws", pageParamJbggws);
		request.setAttribute("jbggws", jbggws);
		request.setAttribute("rowCount", rowCount);
		request.setAttribute("zhanDianzName", getZhanDianzName(jbggws.getItem1(), request));
		//request.setAttribute("userList", userList);
		System.out.println("跳转去updateJbggws");
		
		return "updateJbggws";
	}
	
	@RequestMapping("doJbggws")
	public String doJbggws() throws IllegalArgumentException, IllegalAccessException{

		int jId = Integer.parseInt(request.getParameter("deljId"));
		int resultRows = jbggwsservice.delItem(jId);

		return "dosuccess";
	}

	private String getZhanDianzName(int zId,HttpServletRequest request) {
		HttpSession session = request.getSession(); 
		List<ZhanDian> zhanDians =(List<ZhanDian>) session.getAttribute("zhanDians");
		for (ZhanDian zhanDian : zhanDians) {
			System.out.println(zhanDian.getzId()+"=="+zId);
			if(zhanDian.getzId()==zId){
				
				return zhanDian.getzAbbreviation();
			}
		}
		return "-1";
	}
}
