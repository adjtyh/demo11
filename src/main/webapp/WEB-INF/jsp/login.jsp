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
        <div class="col-sm-12 column">
            <div class="row clearfix">
                <div class="col-sm-4 column">
                </div>
                <div class="col-sm-4  column">
                    <h1>社区信息系统</h1>
                </div>
                <div class="col-sm-4 column">
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-sm-4 column">
                </div>
                <div class="col-sm-4 column">
                    <form class="form-horizontal" role="form" action="login.html" method="post">
                        <div class="form-group">
                            <label for="firstname" class="col-sm-3 control-label">用户名</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="firstname" name="uName" placeholder="请输入用户名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lastname" class="col-sm-3 control-label">密码</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" id="lastname" name="uPassword" placeholder="请输入密码">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-offset-4 col-xs-4 col-sm-offset-4 col-sm-4 ">
                            	<p>${errorMsg }</p>
                                <button type="submit" class="btn btn-success btn-lg btn-block">登录</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-4 column">
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>