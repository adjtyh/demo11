package com.adjtyh.demo11.service;

import org.springframework.web.servlet.ModelAndView;

public interface ILoginService {
	
	public ModelAndView doLogin(String loginPageUrl, String successPageUrl, String uname, String upasswd);
	
}
