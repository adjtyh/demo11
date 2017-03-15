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
import com.adjtyh.demo11.entity.Mzgzlb;
import com.adjtyh.demo11.entity.Mzgzlb_dec;
import com.adjtyh.demo11.entity.PageParam;
import com.adjtyh.demo11.entity.PageParam2;
import com.adjtyh.demo11.entity.PageParamMzgzlb_dec;
import com.adjtyh.demo11.entity.PageParamMzgzlb;
import com.adjtyh.demo11.entity.PageParamMzgzlb_dec;
import com.adjtyh.demo11.entity.PageParamT;
import com.adjtyh.demo11.entity.ZhanDian;
import com.adjtyh.demo11.service.impl.MzgzlbServiceImpl;
import com.adjtyh.demo11.service.impl.Mzgzlb_decServiceImpl;
import com.adjtyh.demo11.service.impl.ShowTableService;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

@Controller
public class Main2Controller {

	@Resource
	HttpServletRequest request;
	
	@Resource
	Mzgzlb_decServiceImpl mzgzlb_decservice;
	
	@Resource
	MzgzlbServiceImpl mzgzlbservice;

	@RequestMapping("doMain2")
	public String doMain2(){
		//caozuoSet 1:sel;2:add;3:update;4:del
		//System.out.println("doMain1获取caozuoSet="+request.getParameter("caozuoSet"));
		//int caozuoSet = Integer.parseInt(request.getParameter("caozuoSet")) ;
		
		PageParamMzgzlb pageParamMzgzlb = new PageParamMzgzlb();
		// 获取总记录数
		int rowCount = 0;
		rowCount = mzgzlbservice.getRowCount();
		int selectedStationId = Integer.parseInt(request.getParameter("selectStationIndex")); 
		pageParamMzgzlb.setData(mzgzlbservice.getTableById(selectedStationId));
		pageParamMzgzlb.setRowCount(pageParamMzgzlb.getData().size());
		//List<AddUser> userList = service.getTable();
		request.setAttribute("pageParamMzgzlb", pageParamMzgzlb);
		request.setAttribute("rowCount", pageParamMzgzlb.getRowCount());
		System.out.println("返回行数："+pageParamMzgzlb.getRowCount());
		//request.setAttribute("userList", userList);

		return "main2";
	}
	@RequestMapping("main2")
	public String main2(){

		return "main2";
	}
	@RequestMapping("lookMzgzlb")
	public String lookMzgzlb(){

		PageParamMzgzlb_dec pageParamMzgzlb = new PageParamMzgzlb_dec();
		
		int mId = Integer.parseInt(request.getParameter("mId"));
		System.out.println("得到mId:"+mId);
		// 获取总记录数
		int rowCount = mzgzlb_decservice.getRowCount();
		pageParamMzgzlb.setData(mzgzlb_decservice.getTable());
		pageParamMzgzlb.setRowCount(rowCount);
		
		Mzgzlb mzgzlb = mzgzlbservice.getTableByJId(mId);
		
		//List<AddUser> userList = service.getTable();
		request.setAttribute("pageParamMzgzlb", pageParamMzgzlb);
		request.setAttribute("mzgzlb", mzgzlb);
		request.setAttribute("rowCount", rowCount);
		request.setAttribute("zhanDianzName", getZhanDianzName(mzgzlb.getI1(), request));
		
		//request.setAttribute("userList", userList);
		System.out.println("跳转去lookMzgzlb");
		
		return "lookMzgzlb";
	}
	
	@RequestMapping("updateMzgzlb")
	public String updateMzgzlb(){

		PageParamMzgzlb_dec pageParamMzgzlb = new PageParamMzgzlb_dec();
		
		int mId = Integer.parseInt(request.getParameter("mId"));
		System.out.println("得到mId:"+mId);
		// 获取总记录数
		int rowCount = mzgzlb_decservice.getRowCount();
		pageParamMzgzlb.setData(mzgzlb_decservice.getTable());
		pageParamMzgzlb.setRowCount(rowCount);
		
		Mzgzlb mzgzlb = mzgzlbservice.getTableByJId(mId);
		
		//List<AddUser> userList = service.getTable();
		request.setAttribute("pageParamMzgzlb", pageParamMzgzlb);
		request.setAttribute("mzgzlb", mzgzlb);
		request.setAttribute("rowCount", rowCount);
		request.setAttribute("zhanDianzName", getZhanDianzName(mzgzlb.getI1(), request));
		//request.setAttribute("userList", userList);
		System.out.println("跳转去updateMzgzlb");
		
		return "updateMzgzlb";
	}
	
	@RequestMapping("doMzgzlb")
	public String doMzgzlb() throws IllegalArgumentException, IllegalAccessException{

		int mId = Integer.parseInt(request.getParameter("delmId"));
		int resultRows = mzgzlbservice.delItem(mId);

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
	@RequestMapping("doUpdateMzgzlb")
	public String doUpdateMzgzlb(HttpServletRequest request) throws ClassNotFoundException, IllegalArgumentException, IllegalAccessException, InstantiationException, NoSuchFieldException, SecurityException 
	{
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
		//mzgzlb.setDate(new Date());
        mzgzlb.setmId(Integer.parseInt(request.getParameter("mId")));
		int resultRows = mzgzlbservice.updateItem(mzgzlb);

		return "dosuccess";
	}
	
	@RequestMapping("doDelMzgzlb")
	public String doDelMzgzlb(HttpServletRequest request) throws ClassNotFoundException, IllegalArgumentException, IllegalAccessException, InstantiationException, NoSuchFieldException, SecurityException 
	{
		Mzgzlb mzgzlb = new Mzgzlb();
		Class<?> class1 = mzgzlb.getClass();
        Field[] field = class1.getDeclaredFields();
        String strtemp ="";
        int inttemp =0;
        for (int i = 2; i < field.length; i++) {
        	strtemp = "value"+String.valueOf(i-1);
        	inttemp = Integer.parseInt(request.getParameter(strtemp));
            field[i].setAccessible(true);
            field[i].set(mzgzlb,inttemp);
        }
        
        //int resultRows = mzgzlbservice.addItem((Mzgzlb)mzgzlb);
		mzgzlb.setDate(new Date());
		int id = 20;
		int resultRows = mzgzlbservice.delItem(id);

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
