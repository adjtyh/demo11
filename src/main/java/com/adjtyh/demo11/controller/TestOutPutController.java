package com.adjtyh.demo11.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.adjtyh.demo11.entity.AddUser;
import com.adjtyh.demo11.entity.UserMaster;
import com.adjtyh.demo11.service.ILoginService;
import com.adjtyh.demo11.service.impl.TestOutPutServiceImpl;


@Controller
public class TestOutPutController {

	@Resource
	TestOutPutServiceImpl service;
	
	@Resource
	HttpServletRequest request;
	
//	@RequestMapping("index")
//	public ModelAndView toLoginPage(){
//		return new ModelAndView("WEB-INF/jsp/login.jsp");
//	}
	
	@RequestMapping("/TestOutPut")
	public String doTestOutPut(){
		
		AddUser user = service.selectByUName("add");
		//List<AddUser> users = service.getTable();

		request.setAttribute("uId", user.uId);
		request.setAttribute("uName", user.uName);
		request.setAttribute("uPassword", user.uPassword);
		request.setAttribute("uLevel", user.uLevel);
		
		return "testoutput";
		
	}

	
}
