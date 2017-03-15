<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>极客学院-SpringMVC实现CRM客户关系管理系统</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />

<link href="/WEB-INF/css/bootstrap.min.css" rel="stylesheet" />
<link href="/WEB-INF/css/bootstrap-responsive.min.css" rel="stylesheet" />


<link href="/WEB-INF/css/font-awesome.css" rel="stylesheet" />

<link href="/WEB-INF/css/adminia.css" rel="stylesheet" />
<link href="/WEB-INF/css/adminia-responsive.css" rel="stylesheet" />

<link href="/WEB-INF/css/pages/dashboard.css" rel="stylesheet" />


<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>

	<div class="navbar navbar-fixed-top">

		<div class="navbar-inner">

			<div class="container">

				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="./">社区信息系统</a>

				<div class="nav-collapse">

					<ul class="nav pull-right">
						<li>
							<!-- <a href="#"><span class="badge badge-warning">7</span></a> -->
						</li>

						<li class="divider-vertical"></li>

						<li class="dropdown"><a data-toggle="dropdown"
							class="dropdown-toggle " href="#"> 当前用户：admin <b
								class="caret"></b>
						</a>

							<ul class="dropdown-menu">
								<li><a href="./account.html"><i class="icon-user"></i>
										用户设置 </a></li>

								<li><a href="./account.html"><i class="icon-lock"></i>
										修改密码</a></li>

								<li class="divider"></li>

								<li><a href="./"><i class="icon-off"></i> 安全退出</a></li>
							</ul></li>
					</ul>

				</div>
				<!-- /nav-collapse -->

			</div>
			<!-- /container -->

		</div>
		<!-- /navbar-inner -->

	</div>
	<!-- /navbar -->


	<div id="content">

		<div class="container">

			<div class="row">

				<div class="span3">

					<div class="account-container">

						<div class="account-avatar">
							<img src="./img/headshot.png" alt="" class="thumbnail" />
						</div>
						<!-- /account-avatar -->

						<div class="account-details">

							<span class="account-name">admin</span> <span
								class="account-role">超级管理员</span> <span class="account-actions">
								<a href="javascript:;">个人中心</a> | <a href="javascript:;">系统设置</a>
							</span>

						</div>
						<!-- /account-details -->

					</div>
					<!-- /account-container -->

					<hr />

					<ul id="main-nav" class="nav nav-tabs nav-stacked">

						<li><a href="./"> <i class="icon-home"></i> 我的桌面
						</a></li>

						<!-- <li>
						<a href="./faq.html">
							<i class="icon-pushpin"></i>
							FAQ	
						</a>
					</li> -->

						<li class="active"><a href="./plans.html"> <i
								class="icon-th-list"></i> 客户管理
						</a></li>

						<!-- <li>
						<a href="./grid.html">
							<i class="icon-th-large"></i>
							Grid Layout	
							<span class="label label-warning pull-right">5</span>
						</a>
					</li> -->

						<li><a href="./charts.html"> <i class="icon-signal"></i>
								报表统计
						</a></li>

						<li><a href="./account.html"> <i class="icon-user"></i>
								个人中心
						</a></li>

						<li><a href="./login.html"> <i class="icon-off"></i> 安全退出
						</a></li>

					</ul>

					<hr />

					<div class="sidebar-extra">
						<p>小伙们大家好，欢迎学习使用社区信息系统。</p>
					</div>
					<!-- .sidebar-extra -->

					<br />

				</div>
				<!-- /span3 -->



				<div class="span9">

					<h1 class="page-title">
						<i class="icon-th-list"></i> 客户管理
					</h1>

					<div class="stat-container">

						<div class="stat-holder">
							<div class="stat">
								<span>564</span> 新增的客户
							</div>
							<!-- /stat -->
						</div>
						<!-- /stat-holder -->

						<div class="stat-holder">
							<div class="stat">
								<span>423</span> 意向客户
							</div>
							<!-- /stat -->
						</div>
						<!-- /stat-holder -->

						<div class="stat-holder">
							<div class="stat">
								<span>96</span> 潜在客户
							</div>
							<!-- /stat -->
						</div>
						<!-- /stat-holder -->

						<div class="stat-holder">
							<div class="stat">
								<span>2</span> 反馈客户
							</div>
							<!-- /stat -->
						</div>
						<!-- /stat-holder -->

					</div>
					<!-- /stat-container -->


					<div class="form-actions">
						<button type="button" onclick="location.href='add.html';"
							class="btn btn-primary btn-large">新增用户</button>&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-large"
							onclick="location.href='import.html';">批量导入用户</button>&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-large btn-success">批量导出用户</button>
					</div>
					<div class="widget widget-table">

						<div class="widget-header">
							<i class="icon-th-list"></i>
							<h3>客户列表</h3>
						</div>
						<!-- /widget-header -->

						<div class="widget-content">

							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>#</th>
										<th>姓名</th>
										<th>邮箱地址</th>
										<th>手机号码</th>
										<th>公司</th>
										<th>常用操作</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>1</td>
										<td>Michael</td>
										<td>Jordan</td>
										<td>@mjordan</td>
										<td>Chicago Bulls</td>
										<td class="action-td"><a href="javascript:;"
											class="btn btn-small btn-warning"> <i class="icon-ok"></i>
										</a> <a href="javascript:;" class="btn btn-small"> <i
												class="icon-remove"></i>
										</a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>Magic</td>
										<td>Johnson</td>
										<td>@mjohnson</td>
										<td>Los Angeles Lakers</td>
										<td class="action-td"><a href="javascript:;"
											class="btn btn-small btn-warning"> <i class="icon-ok"></i>
										</a> <a href="javascript:;" class="btn btn-small"> <i
												class="icon-remove"></i>
										</a></td>
									</tr>
									<tr>
										<td>3</td>
										<td>Charles</td>
										<td>Barkley</td>
										<td>@cbarkley</td>
										<td>Phoenix Suns</td>
										<td class="action-td"><a href="javascript:;"
											class="btn btn-small btn-warning"> <i class="icon-ok"></i>
										</a> <a href="javascript:;" class="btn btn-small"> <i
												class="icon-remove"></i>
										</a></td>
									</tr>
									<tr>
										<td>4</td>
										<td>Karl</td>
										<td>Malone</td>
										<td>@kmalone</td>
										<td>Utah Jazz</td>
										<td class="action-td"><a href="javascript:;"
											class="btn btn-small btn-warning"> <i class="icon-ok"></i>
										</a> <a href="javascript:;" class="btn btn-small"> <i
												class="icon-remove"></i>
										</a></td>
									</tr>
									<tr>
										<td>5</td>
										<td>David</td>
										<td>Robinson</td>
										<td>@drobinson</td>
										<td>San Antonio Spurs</td>
										<td class="action-td"><a href="javascript:;"
											class="btn btn-small btn-warning"> <i class="icon-ok"></i>
										</a> <a href="javascript:;" class="btn btn-small"> <i
												class="icon-remove"></i>
										</a></td>
									</tr>
									<tr>
										<td>6</td>
										<td>Reggie</td>
										<td>Miller</td>
										<td>@rmiller</td>
										<td>Indiana Pacers</td>
										<td class="action-td"><a href="javascript:;"
											class="btn btn-small btn-warning"> <i class="icon-ok"></i>
										</a> <a href="javascript:;" class="btn btn-small"> <i
												class="icon-remove"></i>
										</a></td>
									</tr>
									<tr>
										<td>7</td>
										<td>Clyde</td>
										<td>Drexler</td>
										<td>@cdrexler</td>
										<td>Portland Trail Blazers</td>
										<td class="action-td"><a href="javascript:;"
											class="btn btn-small btn-warning"> <i class="icon-ok"></i>
										</a> <a href="javascript:;" class="btn btn-small"> <i
												class="icon-remove"></i>
										</a></td>
									</tr>
									<tr>
										<td>8</td>
										<td>Hakeem</td>
										<td>Olajuwon</td>
										<td>@holajuwon</td>
										<td>Houston Rockets</td>
										<td class="action-td"><a href="javascript:;"
											class="btn btn-small btn-warning"> <i class="icon-ok"></i>
										</a> <a href="javascript:;" class="btn btn-small"> <i
												class="icon-remove"></i>
										</a></td>
									</tr>
								</tbody>
							</table>





						</div>
						<nav>
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>

						<!-- /widget-content -->

					</div>
					<!-- /widget -->




					<!-- 	<div class="row">

						<div class="span5">

							<div class="widget">

								<div class="widget-header">
									<h3>5 Column</h3>
								</div>
								/widget-header

								<div class="widget-content">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate
										velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
										sint occaecat cupidatat non proident, sunt in culpa qui
										officia deserunt mollit anim id est laborum.</p>
								</div>
								/widget-content

							</div>
							/widget

						</div>
						/span5

						<div class="span4">

							<div class="widget">

								<div class="widget-header">
									<h3>4 Column</h3>
								</div>
								/widget-header

								<div class="widget-content">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate
										velit esse cillum dolore eu fugiat nulla pariatur.</p>
								</div>
								/widget-content

							</div>
							/widget
						</div>
						/span4

					</div> -->
					<!-- /row -->

				</div>
				<!-- /span9 -->


			</div>
			<!-- /row -->

		</div>
		<!-- /container -->

	</div>
	<!-- /content -->


	<div id="footer">

		<div class="container">
			<hr />
			<p align="center">&copy; 2017L</p>
		</div>
		<!-- /container -->

	</div>
	<!-- /footer -->




	<!-- Le javascript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="./js/jquery-1.7.2.min.js"></script>
	<script src="./js/excanvas.min.js"></script>
	<script src="./js/jquery.flot.js"></script>
	<script src="./js/jquery.flot.pie.js"></script>
	<script src="./js/jquery.flot.orderBars.js"></script>
	<script src="./js/jquery.flot.resize.js"></script>


	<script src="./js/bootstrap.js"></script>
	<script src="./js/charts/bar.js"></script>
</body>
</html>
