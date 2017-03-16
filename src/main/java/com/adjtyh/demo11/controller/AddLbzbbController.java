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
import com.adjtyh.demo11.entity.Lbzbb;
import com.adjtyh.demo11.entity.Lbzbb;
import com.adjtyh.demo11.entity.Lbzbb_dec;
import com.adjtyh.demo11.entity.PageParam;
import com.adjtyh.demo11.entity.PageParam2;
import com.adjtyh.demo11.entity.PageParamLbzbb;
import com.adjtyh.demo11.entity.PageParamLbzbb_dec;
import com.adjtyh.demo11.entity.ZhanDian;
import com.adjtyh.demo11.service.impl.LbzbbServiceImpl;
import com.adjtyh.demo11.service.impl.Lbzbb_decServiceImpl;
import com.adjtyh.demo11.service.impl.ShowTableService;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

@Controller
public class AddLbzbbController {

	@Resource
	HttpServletRequest request;
	
	@Resource
	Lbzbb_decServiceImpl lbzbb_decservice;
	
	@Resource
	LbzbbServiceImpl lbzbbservice;
	
	

	@RequestMapping("addLbzbb")
	public String dolbzbb_dec(HttpServletRequest request){

		PageParamLbzbb_dec pageParamLbzbb = new PageParamLbzbb_dec();
		// 获取总记录数
		int rowCount = lbzbb_decservice.getRowCount();
		pageParamLbzbb.setData(lbzbb_decservice.getTable());
		pageParamLbzbb.setRowCount(rowCount);
		//List<AddUser> userList = service.getTable();
		request.setAttribute("pageParamLbzbb", pageParamLbzbb);
		request.setAttribute("rowCount", rowCount);
		//request.setAttribute("userList", userList);
		System.out.println("跳转去addLbzbb");
		return "addLbzbb";
	}

	@RequestMapping("doAddLbzbb")
	public String doAddLbzbb(HttpServletRequest request) throws ClassNotFoundException, IllegalArgumentException, IllegalAccessException, InstantiationException, NoSuchFieldException, SecurityException 
	{
		//使用反射，操作属性
		Lbzbb lbzbb = new Lbzbb();
		Class<?> class1 = lbzbb.getClass();
        Field[] field = class1.getDeclaredFields();
        String strtemp ="value1";
        int inttemp =getZhanDianzId(request.getParameter(strtemp),request);
        
        field[2].setAccessible(true);
        field[2].set(lbzbb,inttemp);
        
        
        
        for (int i = 3; i < field.length; i++) {
        	strtemp = "value"+String.valueOf(i-1);
        	inttemp = Integer.parseInt(request.getParameter(strtemp));
            field[i].setAccessible(true);
            field[i].set(lbzbb,inttemp);
        }
        
        //int resultRows = lbzbbservice.addItem((Lbzbb)lbzbb);
        Date date = new Date();
        
        
		lbzbb.setDate(date);

		int resultRows = lbzbbservice.addItem(lbzbb);

		return "dosuccess";
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
