<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.adjtyh.demo11.entity.PageParamLbzbb"%>
<%@page import="com.adjtyh.demo11.entity.PageParamLbzbb_dec"%>
<%@page import="com.adjtyh.demo11.entity.Lbzbb"%>
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
				<form role="form" action="doUpdateLbzbb.html" method="post">
					<div class="form-group">

						<table class="table table-bordered table-condensed">
							<caption>
								两病周报表
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
										PageParamLbzbb_dec pageParamLbzbb = (PageParamLbzbb_dec) request.getAttribute("pageParamLbzbb");
										Lbzbb lbzbb = (Lbzbb) request.getAttribute("lbzbb");
										System.out.println(lbzbb);

										Field[] field = lbzbb.getClass().getDeclaredFields();
										String strtemp = "";
										int inttemp = 0;
									%><tr>
										<td><%=pageParamLbzbb.getData().get(0).getId()%></td>
										<td><%=pageParamLbzbb.getData().get(0).getItem()%></td>
										<td><input type="text" class="form-control"
											value="${zhanDianzName }" placeholder="文本输入"
											name="value<%=pageParamLbzbb.getData().get(0).getId()%>"
											readonly="readonly" /></td>
										<td><%=pageParamLbzbb.getData().get(0).getDescription()%></td>
									</tr>
									<%
										for (int i = 3; i < field.length; i++) {
											//strtemp = "i" + String.valueOf(i - 1);
											//inttemp = Integer.parseInt(request.getParameter(strtemp));
											field[i].setAccessible(true);
											//field[i].set(pageParamLbzbb.getData(), inttemp);
											//field[i].getInt(request.getParameter("item"));
											//request.getAttribute("item");
											int m = field[i].getInt(lbzbb);
									%>

									<tr>
										<td><%=pageParamLbzbb.getData().get(i - 2).getId()%></td>
										<td><%=pageParamLbzbb.getData().get(i - 2).getItem()%></td>
										<td><input type="text" class="form-control"
											value="<%=field[i].get(lbzbb)%>" placeholder="文本输入"
											name="value<%=pageParamLbzbb.getData().get(i - 2).getId()%>"
											<%if (i == 2) {%> readonly="readonly"
											<%}%> /></td>
										<td><%=pageParamLbzbb.getData().get(i - 2).getDescription()%></td>
									</tr>

									<%
										}
									%>

								</tbody>
						</table>
						<input type="hidden" value="<%=lbzbb.getlId()%>" name="lId" />
						<button type="submit" class="btn btn-success">保存</button>
						<button type="button" class="btn btn-info" onclick="closewin()">关闭</button>


					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script>
	function closewin() {
		window.close();
	}
</script>
</html>