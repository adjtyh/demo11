package com.adjtyh.demo11.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.annotation.Resources;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.adjtyh.demo11.entity.UserMaster;
import com.adjtyh.demo11.entity.ZhanDian;
import com.adjtyh.demo11.service.ILoginService;
import com.adjtyh.demo11.service.impl.LoginServiceImpl;
import com.adjtyh.demo11.service.impl.ZhanDianServiceImpl;


@Controller
public class LoginController {

	@Resource
	LoginServiceImpl service;
	
	@Resource
	ZhanDianServiceImpl zhanDianService;
	
	@Resource
	HttpServletRequest request;
	
	@Resource
	HttpSession session;
	
	@RequestMapping("login")
	public String doLogin(){
		
		String loginPageUrl = "login";
		String successPageUrl = "main1";
		
		String uName = request.getParameter("uName");
		System.out.println("接受uName:"+uName);

		String uPassword = request.getParameter("uPassword");
		//System.out.println("接受uPassword:"+uPassword);
		if(service.doLogin(uName,uPassword)){
			session.setAttribute("uName",uName);
			session.setAttribute("uLevel", service.getuLevel());
			
			List<ZhanDian> zhanDians=zhanDianService.getTable(service.getuLevel(),uName);
			session.setAttribute("zhanDians", zhanDians);
			//request.setAttribute("zhanDian", zhanDians.get(0));
			//System.out.println("登录成功");
			return successPageUrl;
		}else{
			request.setAttribute("errorMsg",service.getErrorMsg());
			//System.out.println("登录失败");
			return loginPageUrl;
		}
	}
	
	@RequestMapping("logout")  
    public String logout() throws Exception{  
        //清除Session  
        session.invalidate();  
         System.out.println("清除了session,准备返回login");
        return "login";  
    }  


	@RequestMapping("/register")
	public String toLoginPage(UserMaster user){
		return "register";
	}
	
	@RequestMapping(value = "/doRegister", method = RequestMethod.POST)
	public String doLogin(@Valid UserMaster user, BindingResult result, ModelMap map){
		
		// 如果入参有问题，返回注册页面
		if (result.hasErrors()) {
			List<FieldError> errorList = result.getFieldErrors();
            for(FieldError error : errorList){
                System.out.println(error.getField() + "*" + error.getDefaultMessage());
                map.put("ERR_" + error.getField(), error.getDefaultMessage());
            }
			return "register";
		}
		
		// 这里省略注册代码
		
		return "registersuccess";
	}
	
}
