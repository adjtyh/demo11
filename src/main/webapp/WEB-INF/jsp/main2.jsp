<%@page import="org.springframework.beans.factory.annotation.Value"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.adjtyh.demo11.entity.ZhanDian"%>
<%@page import="java.util.List"%>
<%@page import="java.awt.event.ItemEvent"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.adjtyh.demo11.entity.PageParamMzgzlb"%>
<%@page import="com.adjtyh.demo11.entity.PageParamMzgzlb_dec"%>
<%@page import="com.adjtyh.demo11.entity.Mzgzlb"%>
<%@page import="java.lang.reflect.Field"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>社区信息系统</title>
<%
	String path = request.getContextPath();
	int caozuoSet = 0;
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
		<%@include file="include/top.jsp"%>
		<div class="row clearfix">
			<div class="col-md-2 column">
				<ul class="nav nav-pills nav-stacked ">
					<li role="presentation"><a href="http://localhost:8080/demo11/main1.html">报表1</a></li>
					<li role="presentation" class="active"><a href="http://localhost:8080/demo11/main2.html">报表2</a></li>
					<li role="presentation"><a href="http://localhost:8080/demo11/main2.html">报表3</a></li>
				</ul>
			</div>
			<div class="col-md-10 column">
				<div class="row clearfix">
					<div class="col-md-8 column">
						<form class="form-inline" name="form1" action="doMain2.html"
							method="post">

							<div class="form-group">
								<select class="form-control" id="selectStation"
									name="selectStation" onchange="setSelect1Val()"
									<%if ((int) session.getAttribute("uLevel") > 1) {%>
									disabled="disabled" <%}%>>


									<!--  <option value="1" selected="selected">城北</option>-->
									<option value="0">全部</option>
									<%
										List<ZhanDian> zhanDians = (List<ZhanDian>) session.getAttribute("zhanDians");
										String uName = (String) session.getAttribute("uName");
										for (int i = 0; i < zhanDians.size(); i++) {
											if (zhanDians.get(i).getzAbbreviation().equals(uName)) {
									%><option value="<%=zhanDians.get(i).zId%>" selected="selected"><%=zhanDians.get(i).zAbbreviation%>
									</option>
									<%
										System.out.println("选中" + uName);
											} else {
									%><option value="<%=zhanDians.get(i).zId%>"><%=zhanDians.get(i).zAbbreviation%>
									</option>
									<%
										}
										}
									%>


								</select> <input type="hidden" id="selectStationIndex"
									name="selectStationIndex" /> <label for="selectStation">站点</label>

								<button type="submit" class="btn btn-info">查询</button>
								<button type="button" class="btn btn-success" onclick="add()">新增表单</button>
							</div>






						</form>
					</div>
					<div class="col-md-4 column">
						<p class="text-right"></p>
					</div>
				</div>
				<div class="row clearfix">
					<!-- <table class="table table-bordered"> -->
						<table border="1">
						<form action="doMzgzlb.html" method="post" name="form2"
							target="_blank">
							<caption>门诊工作量季度表<br/>
							注意：本表数据必须认真核对，没有的应填0；各数据要符合逻辑关系；在每季度结束1周内填报，第10天系统自动停止收集数据。
							</caption>
							<thead>
								<tr>
									<th>序号</th>
									<th>查看</th>
									<th>修改</th>
									<th>删除</th>
									<th>时间</th>
									<!--循环输出表格列  -->
									<c:forEach var="num1" begin="1" end="9" step="1">
										<th>i0${num1 }</th>
									</c:forEach>
									<c:forEach var="num2" begin="10" end="24" step="1">
										<th>i${num2 }</th>
									</c:forEach>
								</tr>
							</thead>
							<tbody>

								<%
									PageParamMzgzlb pageParamMzgzlb = (PageParamMzgzlb) request.getAttribute("pageParamMzgzlb");
								%>
								<!--循环输出表格单元  -->
								<c:forEach items="${pageParamMzgzlb.data }" var="item">

									<tr>
										<td>${item.mId }</td>
										<td><a href="lookMzgzlb.html?mId=${item.mId }"
											target="_blank">查看 </a></td>
										<td><a href="updateMzgzlb.html?mId=${item.mId }"
											target="_blank">修改</a></td>
										<td>
											<button type="button" class="btn btn-danger"
												onclick="del(${item.mId })">删除</button>
										</td>
										<td><fmt:formatDate type="date" value="${item.date }" />

										</td>
										<!--循环输出表格单元  -->

										<!--使用反射，循环输出表格单元  -->
										<%
											Mzgzlb jbggws = new Mzgzlb();
												Class<?> class1 = jbggws.getClass();

												Field[] field = class1.getDeclaredFields();
												String strtemp = "";
												int inttemp = 0;
												//站点名 列
												field[2].setAccessible(true);
												int n = field[2].getInt(pageContext.getAttribute("item"));
												System.out.println("n="+n);
										%><td><%=zhanDians.get(n-1).getzAbbreviation()%></td>
										<%
											for (int i = 3; i < field.length; i++) {
													//strtemp = "i" + String.valueOf(i - 1);
													//inttemp = Integer.parseInt(request.getParameter(strtemp));
													field[i].setAccessible(true);
													//field[i].set(pageParamMzgzlb.getData(), inttemp);
													//field[i].getInt(request.getParameter("item"));
													//request.getAttribute("item");
													int m = field[i].getInt(pageContext.getAttribute("item"));
										%><td><%=m%></td>
										<%
											}
										%>

									</tr>

								</c:forEach>


							</tbody>
							<input id="delmId" name="delmId" type="hidden" value="0" />
						</form>
					</table>
					<p>返回行数：${rowCount }</p>

				</div>
			</div>
		</div>
		<%@include file="include/bottom.jsp"%>
	</div>
</body>

<script lang="javascript">
	setSelect1Val(); //1.在初始加载时就将两者的值设置为一致;
	//2. 为了防止代码以后会有改动---有时不需要disabled, 故有上面的onchange="setVal()"
	function setSelect1Val() {
		document.getElementById('selectStationIndex').value = document
				.getElementById('selectStation').value;
	}

	function add() {
		window.open("addMzgzlb.html");
	}

	function del(mId) {
		if( confirm("确定要删除这条记录吗？")==false){
			window.event.returnValue = false;
		}else{
			document.getElementById("delmId").value = mId; 
			form2.submit();
		}
	}
</script>

</html>