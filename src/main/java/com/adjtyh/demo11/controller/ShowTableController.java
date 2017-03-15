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
import com.adjtyh.demo11.entity.PageParamJbggws_dec;
import com.adjtyh.demo11.entity.ZhanDian;
import com.adjtyh.demo11.service.impl.JbggwsServiceImpl;
import com.adjtyh.demo11.service.impl.Jbggws_decServiceImpl;
import com.adjtyh.demo11.service.impl.ShowTableService;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

@Controller
public class ShowTableController {
	@Resource
	ShowTableService service;
	
	@Resource
	Jbggws_decServiceImpl jbggws_decservice;
	
	@Resource
	JbggwsServiceImpl jbggwsservice;
	
	@RequestMapping("showTable")
	public String doShowTable(HttpServletRequest request){
		String currPageStr = request.getParameter("page");
		int currPage = 1;
		try {
			currPage = Integer.parseInt(currPageStr);
		} catch (Exception e) {
		}
		
		// 获取总记录数
		int rowCount = service.getRowCount();
		PageParam2 pageParam = new PageParam2();
		pageParam.setRowCount(rowCount);
		if (pageParam.getTotalPage() < currPage) {
			currPage = pageParam.getTotalPage();
		}
		pageParam.setCurrPage(currPage);
		pageParam = service.getIpListByPage(pageParam);
		
		request.setAttribute("pageParam", pageParam);
		
		return "showTable";
	}
	
	@RequestMapping("showT")
	public String doShowT(HttpServletRequest request){

		// 获取总记录数
		int rowCount = service.getRowCount();
		//List<AddUser> userList = service.getTable();
		
		//request.setAttribute("userList", userList);
		
		return "showT";
	}
	
	@RequestMapping("jbggws1")
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

		return "jbggws";
	}
	
	@RequestMapping("doAddJbggws")
	public String doAddJbggws(HttpServletRequest request) throws ClassNotFoundException, IllegalArgumentException, IllegalAccessException, InstantiationException, NoSuchFieldException, SecurityException 
	{
		//使用反射，操作属性
		Jbggws jbggws = new Jbggws();
		Class<?> class1 = jbggws.getClass();
        Field[] field = class1.getDeclaredFields();
        String strtemp ="value1";
        int inttemp =getZhanDianzId(request.getParameter(strtemp),request);
        
        field[2].setAccessible(true);
        field[2].set(jbggws,inttemp);
        
        
        
        for (int i = 3; i < field.length; i++) {
        	strtemp = "value"+String.valueOf(i-1);
        	inttemp = Integer.parseInt(request.getParameter(strtemp));
            field[i].setAccessible(true);
            field[i].set(jbggws,inttemp);
        }
        
        //int resultRows = jbggwsservice.addItem((Jbggws)jbggws);
        Date date = new Date();
        
        
		jbggws.setDate(date);

		int resultRows = jbggwsservice.addItem(jbggws);

		return "dosuccess";
	}
	
	@RequestMapping("doUpdateJbggws")
	public String doUpdateJbggws(HttpServletRequest request) throws ClassNotFoundException, IllegalArgumentException, IllegalAccessException, InstantiationException, NoSuchFieldException, SecurityException 
	{
		Jbggws jbggws = new Jbggws();
		Class<?> class1 = jbggws.getClass();
        Field[] field = class1.getDeclaredFields();
        String strtemp ="value1";
        int inttemp =getZhanDianzId(request.getParameter(strtemp),request);
        
        field[2].setAccessible(true);
        field[2].set(jbggws,inttemp);
        
        for (int i = 3; i < field.length; i++) {
        	strtemp = "value"+String.valueOf(i-1);
        	inttemp = Integer.parseInt(request.getParameter(strtemp));
            field[i].setAccessible(true);
            field[i].set(jbggws,inttemp);
        }
        
        //int resultRows = jbggwsservice.addItem((Jbggws)jbggws);
		//jbggws.setDate(new Date());
        jbggws.setjId(Integer.parseInt(request.getParameter("jId")));
		int resultRows = jbggwsservice.updateItem(jbggws);

		return "dosuccess";
	}
	
	@RequestMapping("doDelJbggws")
	public String doDelJbggws(HttpServletRequest request) throws ClassNotFoundException, IllegalArgumentException, IllegalAccessException, InstantiationException, NoSuchFieldException, SecurityException 
	{
		Jbggws jbggws = new Jbggws();
		Class<?> class1 = jbggws.getClass();
        Field[] field = class1.getDeclaredFields();
        String strtemp ="";
        int inttemp =0;
        for (int i = 2; i < field.length; i++) {
        	strtemp = "value"+String.valueOf(i-1);
        	inttemp = Integer.parseInt(request.getParameter(strtemp));
            field[i].setAccessible(true);
            field[i].set(jbggws,inttemp);
        }
        
        //int resultRows = jbggwsservice.addItem((Jbggws)jbggws);
		jbggws.setDate(new Date());
		int id = 20;
		int resultRows = jbggwsservice.delItem(id);

		return "dosuccess";
	}
	@RequestMapping("customer")
	public String docostomer(HttpServletRequest request){


		return "customer";
	}
	
	private int getZhanDianzId(String stationName,HttpServletRequest request) {
		HttpSession session = request.getSession(); 
		List<ZhanDian> zhanDians =(List<ZhanDian>) session.getAttribute("zhanDians");
		for (ZhanDian zhanDian : zhanDians) {
			System.out.println(zhanDian.getzAbbreviation()+"=="+stationName);
			if(zhanDian.getzAbbreviation().equals(stationName)){
				
				return zhanDian.getzId();
			}
		}
		return -1;
	}
}
