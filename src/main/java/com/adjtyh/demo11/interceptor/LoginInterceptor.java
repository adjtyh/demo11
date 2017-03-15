package com.adjtyh.demo11.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {

		//获取请求的URL
		System.out.println("拦截器开始运行！");
        String url = request.getRequestURI();
        System.out.println("拦截到的url:"+url);
        //URL:login.html是公开的;这个demo是除了login.html是可以公开访问的，其它的URL都进行拦截控制  
        if(url.indexOf("login.html")>=0){
        	System.out.println("这个login.html,放过！");
            return true;  
        }  
        //获取Session  
        HttpSession session = request.getSession();  
        String username = (String)session.getAttribute("uName");  
        System.out.println("session取uName得值:"+username);  
        if(username != null){
        	System.out.println("有uName，可以登录");
            return true;  
        }  
        //不符合条件的，跳转到登录界面  
        System.out.println("不符合条件，需要跳转登录页面");
        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response); 
        //response.sendRedirect("login.html");
        return false;
	}

}
