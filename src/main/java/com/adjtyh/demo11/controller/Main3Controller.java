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
import com.adjtyh.demo11.entity.Lbzbb;
import com.adjtyh.demo11.entity.Lbzbb_dec;
import com.adjtyh.demo11.entity.PageParam;
import com.adjtyh.demo11.entity.PageParam2;
import com.adjtyh.demo11.entity.PageParamLbzbb_dec;
import com.adjtyh.demo11.entity.PageParamLbzbb;
import com.adjtyh.demo11.entity.PageParamLbzbb_dec;
import com.adjtyh.demo11.entity.PageParamT;
import com.adjtyh.demo11.entity.ZhanDian;
import com.adjtyh.demo11.service.impl.LbzbbServiceImpl;
import com.adjtyh.demo11.service.impl.Lbzbb_decServiceImpl;
import com.adjtyh.demo11.service.impl.ShowTableService;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

@Controller
public class Main3Controller {

	@Resource
	HttpServletRequest request;
	
	@Resource
	Lbzbb_decServiceImpl lbzbb_decservice;
	
	@Resource
	LbzbbServiceImpl lbzbbservice;

	@RequestMapping("doMain3")
	public String doMain3(){
		//caozuoSet 1:sel;2:add;3:update;4:del
		//System.out.println("doMain1获取caozuoSet="+request.getParameter("caozuoSet"));
		//int caozuoSet = Integer.parseInt(request.getParameter("caozuoSet")) ;
		
		PageParamLbzbb pageParamLbzbb = new PageParamLbzbb();
		// 获取总记录数
		int rowCount = 0;
		rowCount = lbzbbservice.getRowCount();
		int selectedStationId = Integer.parseInt(request.getParameter("selectStationIndex")); 
		pageParamLbzbb.setData(lbzbbservice.getTableById(selectedStationId));
		pageParamLbzbb.setRowCount(pageParamLbzbb.getData().size());
		//List<AddUser> userList = service.getTable();
		request.setAttribute("pageParamLbzbb", pageParamLbzbb);
		request.setAttribute("rowCount", pageParamLbzbb.getRowCount());
		System.out.println("返回行数："+pageParamLbzbb.getRowCount());
		//request.setAttribute("userList", userList);

		return "main3";
	}
	@RequestMapping("main3")
	public String main3(){

		return "main3";
	}
	@RequestMapping("lookLbzbb")
	public String lookLbzbb(){

		PageParamLbzbb_dec pageParamLbzbb = new PageParamLbzbb_dec();
		
		int lId = Integer.parseInt(request.getParameter("lId"));
		System.out.println("得到lId:"+lId);
		// 获取总记录数
		int rowCount = lbzbb_decservice.getRowCount();
		pageParamLbzbb.setData(lbzbb_decservice.getTable());
		pageParamLbzbb.setRowCount(rowCount);
		
		Lbzbb lbzbb = lbzbbservice.getTableByJId(lId);
		
		//List<AddUser> userList = service.getTable();
		request.setAttribute("pageParamLbzbb", pageParamLbzbb);
		request.setAttribute("lbzbb", lbzbb);
		request.setAttribute("rowCount", rowCount);
		request.setAttribute("zhanDianzName", getZhanDianzName(lbzbb.getI1(), request));
		
		//request.setAttribute("userList", userList);
		System.out.println("跳转去lookLbzbb");
		
		return "lookLbzbb";
	}
	
	@RequestMapping("updateLbzbb")
	public String updateLbzbb(){

		PageParamLbzbb_dec pageParamLbzbb = new PageParamLbzbb_dec();
		
		int lId = Integer.parseInt(request.getParameter("lId"));
		System.out.println("得到lId:"+lId);
		// 获取总记录数
		int rowCount = lbzbb_decservice.getRowCount();
		pageParamLbzbb.setData(lbzbb_decservice.getTable());
		pageParamLbzbb.setRowCount(rowCount);
		
		Lbzbb lbzbb = lbzbbservice.getTableByJId(lId);
		
		//List<AddUser> userList = service.getTable();
		request.setAttribute("pageParamLbzbb", pageParamLbzbb);
		request.setAttribute("lbzbb", lbzbb);
		request.setAttribute("rowCount", rowCount);
		request.setAttribute("zhanDianzName", getZhanDianzName(lbzbb.getI1(), request));
		//request.setAttribute("userList", userList);
		System.out.println("跳转去updateLbzbb");
		
		return "updateLbzbb";
	}
	
	@RequestMapping("doLbzbb")
	public String doLbzbb() throws IllegalArgumentException, IllegalAccessException{

		int lId = Integer.parseInt(request.getParameter("dellId"));
		int resultRows = lbzbbservice.delItem(lId);

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
	@RequestMapping("doUpdateLbzbb")
	public String doUpdateLbzbb(HttpServletRequest request) throws ClassNotFoundException, IllegalArgumentException, IllegalAccessException, InstantiationException, NoSuchFieldException, SecurityException 
	{
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
		//lbzbb.setDate(new Date());
        lbzbb.setlId(Integer.parseInt(request.getParameter("lId")));
		int resultRows = lbzbbservice.updateItem(lbzbb);

		return "dosuccess";
	}
	
	@RequestMapping("doDelLbzbb")
	public String doDelLbzbb(HttpServletRequest request) throws ClassNotFoundException, IllegalArgumentException, IllegalAccessException, InstantiationException, NoSuchFieldException, SecurityException 
	{
		Lbzbb lbzbb = new Lbzbb();
		Class<?> class1 = lbzbb.getClass();
        Field[] field = class1.getDeclaredFields();
        String strtemp ="";
        int inttemp =0;
        for (int i = 2; i < field.length; i++) {
        	strtemp = "value"+String.valueOf(i-1);
        	inttemp = Integer.parseInt(request.getParameter(strtemp));
            field[i].setAccessible(true);
            field[i].set(lbzbb,inttemp);
        }
        
        //int resultRows = lbzbbservice.addItem((Lbzbb)lbzbb);
		lbzbb.setDate(new Date());
		int id = 20;
		int resultRows = lbzbbservice.delItem(id);

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
