<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<nav class="navbar navbar-inverse">
	<p><%=request.getContextPath() %></p>
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Email">
                    <input type="text" class="form-control" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-default">Sign in</button>
            </form>
            
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
</body>
</html>