<%@page import="com.adjtyh.demo11.entity.PageParam"%>
<%@page import="com.adjtyh.demo11.entity.PageParam2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">  
table {  
    border: 2px #CCCCCC solid;  
    width: 360px;  
    
}  
  
td,th {  
    height: 30px;  
    border: #CCCCCC 1px solid;  
}  
</style> 


<title>显示数据</title>
</head>
<body>

	<div class="wrap fullwidth">
	<div id="content" style="width: auto;">
	<div id="post-2" class="post-2 page type-page status-publish hentry">
		<div class="clear"></div>
		<div class="entry entry-content">
			<div class="entry-title">这个是某表</div>
				 
				<div id="list">
					<table class="table" align="center">
						<thead>
							<tr>
								<th>编号</th>
								<th>姓名</th>
								<th>密码</th>
								<th>等级</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${pageParam.data }" var="item">
							
							<tr>
								<td>${item.uId }</td>
								<td>${item.uName }</td>
								<td>${item.uPassword }</td>
								<td>${item.uLevel }</td>
							</tr>		

							</c:forEach>
							

						</tbody>
					</table>
					<p class="message">注：解释权归L所有</p>
					<div class="wp-pagenavi">
						<span>第</span>
						<%
						
						PageParam2 pageParam = (PageParam2)request.getAttribute("pageParam");
							int currPage = pageParam.getCurrPage();
							int totalPage = pageParam.getTotalPage();
							for(int i = 1; i <= totalPage; i ++){
								if(i == currPage){
									%><span class="current"><%=currPage %></span><%
								}else{
									%><a href="showTable.html?page=<%=i %>"><%=i %></a><%
								}
							}
						%>
						<span>页</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<div id="footer">
			<div class="copyright">
				<span class="footerleft">友情链接：
				<a href="http://www.baidu.com/" target="_blank">百度</a>
				<a href="http://ip.qiaodm.com/" target="_blank" title="敲代码免费代理IP">敲代码免费代理IP</a>
				<a href="http://proxy.goubanjia.com/" target="_blank" title="敲代码免费代理IP">全网代理IP</a>
				<a href="http://wantsee.cn" target="_blank" title="">想看就看</a>
				<a href="http://www.66ip.cn/index.html" target="_blank" title="">66代理</a>
			</span>
			<div class="clear"></div>
		</div>
		<div class="copyright" style="display: none;">
			<span class="footerleft">Copyright © 2016</span>
			<span class="footerright">All rights reserved</span>
			<div class="clear"></div>
		</div>
	</div>
</div>
	
</body>
</html>