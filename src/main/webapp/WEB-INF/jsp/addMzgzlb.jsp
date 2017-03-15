<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.adjtyh.demo11.entity.PageParamMzgzlb"%>
<%@page import="com.adjtyh.demo11.entity.PageParamMzgzlb_dec"%>
<%@page import="com.adjtyh.demo11.entity.Mzgzlb"%>
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
				<form role="form" action="doAddMzgzlb.html" method="post">
					<div class="form-group">

						<table class="table table-bordered table-condensed">
							<caption>
								门诊工作量季度表
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
										PageParamMzgzlb_dec pageParamMzgzlb = (PageParamMzgzlb_dec) request.getAttribute("pageParamMzgzlb");
										String strtemp = "";
										int inttemp = 0;
										if ((int) (session.getAttribute("uLevel")) > 1) {
											strtemp = (String) session.getAttribute("uName");
											System.out.println("addMzgzlb.jsp 站点:" + strtemp);
										}
									%>
									<tr>
										<td><%=pageParamMzgzlb.getData().get(0).getId()%></td>
										<td><%=pageParamMzgzlb.getData().get(0).getItem()%></td>
										<td><input type="text" class="form-control"
											value="<%=strtemp%>" placeholder="文本输入"
											name="value<%=pageParamMzgzlb.getData().get(0).getId()%>"
											<%
											if ((int) (session.getAttribute("uLevel")) > 1) {
												%>readonly="readonly"<%
											}
											%>
											 /></td>
										<td><%=pageParamMzgzlb.getData().get(0).getDescription()%></td>
									</tr>
									<%
										for (int i = 1; i < pageParamMzgzlb.getData().size(); i++) {
									%>
									<tr>
										<td><%=pageParamMzgzlb.getData().get(i).getId()%></td>
										<td><%=pageParamMzgzlb.getData().get(i).getItem()%></td>
										<td><input type="text" class="form-control"
											value="0" placeholder="文本输入"
											name="value<%=pageParamMzgzlb.getData().get(i).getId()%>"
											 /></td>
										<td><%=pageParamMzgzlb.getData().get(i).getDescription()%></td>
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