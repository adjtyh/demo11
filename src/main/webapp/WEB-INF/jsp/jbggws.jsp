<%@page import="com.adjtyh.demo11.entity.PageParamJbggws_dec"%>
<%@page import="com.adjtyh.demo11.entity.PageParamJbggws"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>基本公共卫生服务季度报表</title>
</head>

<var>
	
</var>
<body>

	<div class="wrap fullwidth">
	<div id="content" style="width: auto;">
	<div id="post-2" class="post-2 page type-page status-publish hentry">
		<div class="clear"></div>
		<div class="entry entry-content">
			<div class="entry-title">表</div>
				 
				<div id="list">
					<form action="doAddJbggws.html" method="post" name="form1">
					<table class="table" align="center" border="1">
						<caption>基本公共卫生服务季度报表<cation/>
						<thead>
							<tr>
								<th>序号</th>
								<th>项目</th>
								<th>填报说明</th>
								<th>数据</th>
							</tr>
						</thead>
						<tbody>
						
							<%
							PageParamJbggws_dec pageParamJbggws = (PageParamJbggws_dec)request.getAttribute("pageParamJbggws");
							%>
							<c:forEach items="${pageParamJbggws.data }" var="item">
							
							<tr>
								<td>${item.id }</td>
								<td>${item.item }</td>
								<td>${item.description }</td>
								<td>
									<input type="text" value="7" name="value${item.id }" />
								</td>
							</tr>		

							</c:forEach>
							

						</tbody>
					</table>
					<p class="message">注：解释权归L所有</p>
					<input type="submit"/>
					
					<input type="button" value="增加" onclick="add()">
					<input type="button" value="删除" onclick="del()">
					<input type="button" value="修改" onclick="alter()">
					
					<p class="message">表返回行数：${rowCount }</p>
					
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>

</body>

<script language="javascript">
function add(){
	form1.action="doAddJbggws.html";
	form1.submit();
}
function del(){
	form1.action="doDelJbggws.html";
	form1.submit();
}
function alter(){
	form1.action="doUpdateJbggws.html";
	form1.submit();
}</script>

</html>