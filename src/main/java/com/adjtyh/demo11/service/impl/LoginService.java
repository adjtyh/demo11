package com.adjtyh.demo11.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.adjtyh.demo11.dao.IUserMasterDao;
import com.adjtyh.demo11.entity.UserMaster;
import com.adjtyh.demo11.service.ILoginService;

@Service
public class LoginService implements ILoginService {
	
	@Resource
	IUserMasterDao dao;

	public ModelAndView doLogin(String loginPageUrl, String successPageUrl, String um_name, String um_password) {
		
		
		if (um_name == null || "".equals(um_name)) {
			return new ModelAndView(loginPageUrl, "error", "用户名不能为空");
		}
		
		if (um_password == null || "".equals(um_password)) {
			return new ModelAndView(loginPageUrl, "error", "密码不能为空");
		}
		List<UserMaster> user = null;
		try {
			
			user=dao.selectByUmName(um_name);
			
//			System.out.println(user.toString());
			// uname = admin , passwd = 123
		} catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView(loginPageUrl, "error", "查询数据库抛出错误！");
		}
		
		System.out.println("查询结果是否为空"+user.isEmpty());
		
		if(user.isEmpty()){
			System.out.println("uer=null");
			return new ModelAndView(loginPageUrl, "error", "用户名不存在！");
		}
		else{
			System.out.println("参数um_name="+um_name+" um_password="+um_password);
			System.out.println("最后um_name="+user.get(0).getUm_name().trim()+" um_password="+user.get(0).getUm_password().trim());
			if (um_name.equals(user.get(0).getUm_name().trim()) && um_password.equals(user.get(0).getUm_password().trim())) {
				
				System.out.println("用户名密码通过验证，跳转"+"successPageUrl");
				return new ModelAndView(successPageUrl, "error", "已经跳转成功页面");
			}
		}
		
		
//		System.out.println("参数um_name="+um_name+" um_password="+um_password);
//		System.out.println("最后um_name="+user.get(0).getUm_name()+" um_password="+user.get(0).getUm_password());
		return new ModelAndView(loginPageUrl, "error", "用户名或者密码错误");
	}

}
