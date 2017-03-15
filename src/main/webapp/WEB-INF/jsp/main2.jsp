<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.adjtyh.demo11.entity.PageParamJbggws"%>
<%@page import="com.adjtyh.demo11.entity.PageParamJbggws_dec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <%String path= request.getContextPath();%>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--&lt;!&ndash; jQuery文件。务必在bootstrap.min.js 之前引入 &ndash;&gt;-->
    <script src="<%=path%>/js/jquery-1.7.2.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="<%=path%>/js/bootstrap.min.js" rel="stylesheet" type="text/css"></script>


</head>
<body>
<div class="container">
	<%@include file="include/top.jsp"%>
    <div class="row clearfix">
        <div class="col-md-2 column">
            <ul class="nav nav-pills nav-stacked " >
                <li role="presentation" class="active"><a href="#">报表1</a></li>
                <li role="presentation"><a href="#">报表2</a></li>
                <li role="presentation"><a href="#">报表3</a></li>
            </ul>
        </div>
        <div class="col-md-10 column">
            <div class="row clearfix">

                <form class="form-inline" name ="form1" action="doMain.html">

                    <div class="form-group">
                        <select class="form-control" id="station">
                            <option value="1" selected = "selected">城北</option>
                            <option value="2">大榄</option>
                            <option value="3">新城</option>
                            <option value="4">大布</option>
                            <option value="5">罗村</option>
                        </select>
                        <label for="station">站点</label>
                    </div>

                    <button type="button" class="btn btn-info" onclick="sel">查询</button>

                    <button type="button" class="btn btn-primary" onclick="add">增加</button>

                    <button type="button" class="btn btn-success" onclick="update">修改</button>

                    <button type="button" class="btn btn-danger" onclick="del">删除</button>
					<input type="submit"/>
                </form>

            </div>
            <div class="row clearfix">
            <table class="table table-bordered">
                <form action="doAddJbggws.html" method="post" name="form2">
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
			</form>
            </table>
            <p>返回行数：${rowCount }</p>
            <p>pageParamJbggws.rowCount:${pageParamJbggws.rowCount }
            </div>
        </div>
    </div>
    <%@include file="include/bottom.jsp" %>
</div>
</body>
<%int caozuoSet = 1; %>
<script language="javascript">
function sel(){
	caozuoSet=1;
	form1.submit();
}
function add(){
	caozuoSet=2;
	form1.submit();
}
function update(){
	caozuoSet=3;
	form1.submit();
}
function del(){
	caozuoSet=4;
	form1.submit();
}
</script>
</html>