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
import com.adjtyh.demo11.entity.Mzgzlb;
import com.adjtyh.demo11.entity.Mzgzlb;
import com.adjtyh.demo11.entity.Mzgzlb_dec;
import com.adjtyh.demo11.entity.PageParam;
import com.adjtyh.demo11.entity.PageParam2;
import com.adjtyh.demo11.entity.PageParamMzgzlb;
import com.adjtyh.demo11.entity.PageParamMzgzlb_dec;
import com.adjtyh.demo11.entity.ZhanDian;
import com.adjtyh.demo11.service.impl.MzgzlbServiceImpl;
import com.adjtyh.demo11.service.impl.Mzgzlb_decServiceImpl;
import com.adjtyh.demo11.service.impl.ShowTableService;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

@Controller
public class AddMzgzlbController {

	@Resource
	HttpServletRequest request;
	
	@Resource
	Mzgzlb_decServiceImpl mzgzlb_decservice;
	
	@Resource
	MzgzlbServiceImpl mzgzlbservice;
	
	

	@RequestMapping("addMzgzlb")
	public String domzgzlb_dec(HttpServletRequest request){

		PageParamMzgzlb_dec pageParamMzgzlb = new PageParamMzgzlb_dec();
		// 获取总记录数
		int rowCount = mzgzlb_decservice.getRowCount();
		pageParamMzgzlb.setData(mzgzlb_decservice.getTable());
		pageParamMzgzlb.setRowCount(rowCount);
		//List<AddUser> userList = service.getTable();
		request.setAttribute("pageParamMzgzlb", pageParamMzgzlb);
		request.setAttribute("rowCount", rowCount);
		//request.setAttribute("userList", userList);
		System.out.println("跳转去addMzgzlb");
		return "addMzgzlb";
	}

	@RequestMapping("doAddMzgzlb")
	public String doAddMzgzlb(HttpServletRequest request) throws ClassNotFoundException, IllegalArgumentException, IllegalAccessException, InstantiationException, NoSuchFieldException, SecurityException 
	{
		//使用反射，操作属性
		Mzgzlb mzgzlb = new Mzgzlb();
		Class<?> class1 = mzgzlb.getClass();
        Field[] field = class1.getDeclaredFields();
        String strtemp ="value1";
        int inttemp =getZhanDianzId(request.getParameter(strtemp),request);
        
        field[2].setAccessible(true);
        field[2].set(mzgzlb,inttemp);
        
        
        
        for (int i = 3; i < field.length; i++) {
        	strtemp = "value"+String.valueOf(i-1);
        	inttemp = Integer.parseInt(request.getParameter(strtemp));
            field[i].setAccessible(true);
            field[i].set(mzgzlb,inttemp);
        }
        
        //int resultRows = mzgzlbservice.addItem((Mzgzlb)mzgzlb);
        Date date = new Date();
        
        
		mzgzlb.setDate(date);

		int resultRows = mzgzlbservice.addItem(mzgzlb);

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
