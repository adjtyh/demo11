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
<title>测试表格操作</title>
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
								</caption>
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
									%>
									<c:forEach items="${pageParamJbggws.data }" var="item">

										<tr>
											<td>${item.id }</td>
											<td>${item.item }</td>
											<td>
											<input type="text" class="form-control" value="0"
												placeholder="文本输入" name="value${item.id }" />
											</td>
											<td>${item.description }</td>
										</tr>
									</c:forEach>
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