<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.adjtyh.demo11.entity.PageParamJbggws"%>
<%@page import="com.adjtyh.demo11.entity.PageParamJbggws_dec"%>
<%@page import="com.adjtyh.demo11.entity.Jbggws"%>
<%@page import="java.lang.reflect.Field"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
<%
	String path = request.getContextPath();
%>

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<!--&lt;!&ndash; jQuery文件。务必在bootstrap.min.js 之前引入 &ndash;&gt;-->
<script src="<%=path%>/js/jquery-1.7.2.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<%=path%>/js/bootstrap.min.js" rel="stylesheet"
	type="text/css"></script>


</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<form role="form" action="doAddJbggws.html" method="post">
					<div class="form-group">

						<table class="table table-bordered table-condensed">
							<caption>
								基本公共卫生服务季度报表
								<cation />
								<thead>
									<tr>
										<th>序号</th>
										<th>项目</th>
										<th>数据</th>
										<th>填报说明</th>
									</tr>
								</thead>
								<tbody>

									<%
										PageParamJbggws_dec pageParamJbggws = (PageParamJbggws_dec) request.getAttribute("pageParamJbggws");
										String strtemp = "";
										int inttemp = 0;
										if ((int) (session.getAttribute("uLevel")) > 1) {
											strtemp = (String) session.getAttribute("uName");
											System.out.println("addJbggws.jsp 站点:" + strtemp);
										}
									%>
									<tr>
										<td><%=pageParamJbggws.getData().get(0).getId()%></td>
										<td><%=pageParamJbggws.getData().get(0).getItem()%></td>
										<td><input type="text" class="form-control"
											value="<%=strtemp%>" placeholder="文本输入"
											name="value<%=pageParamJbggws.getData().get(0).getId()%>"
											<%
											if ((int) (session.getAttribute("uLevel")) > 1) {
												%>readonly="readonly"<%
											}
											%>
											 /></td>
										<td><%=pageParamJbggws.getData().get(0).getDescription()%></td>
									</tr>
									<%
										for (int i = 1; i < pageParamJbggws.getData().size(); i++) {
									%>
									<tr>
										<td><%=pageParamJbggws.getData().get(i).getId()%></td>
										<td><%=pageParamJbggws.getData().get(i).getItem()%></td>
										<td><input type="text" class="form-control"
											value="0" placeholder="文本输入"
											name="value<%=pageParamJbggws.getData().get(i).getId()%>"
											 /></td>
										<td><%=pageParamJbggws.getData().get(i).getDescription()%></td>
									</tr>
									<%
										}
									%>

								</tbody>
						</table>
						<button type="submit" class="btn btn-success">提交</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>