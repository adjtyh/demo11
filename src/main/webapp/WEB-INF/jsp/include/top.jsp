<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row clearfix">
	<div class="col-md-12 column">
		<nav class="navbar navbar-default" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> .<span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Brand</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">全科医疗科</a></li>
					<!-- <li><a href="#">信息科</a></li>
					<li><a href="#">系统管理</a></li> -->
				</ul>
				<ul class="nav navbar-nav navbar-right">

					<form class="navbar-form navbar-right" action="logout.html">
						<button type="submit" class="btn btn-default">退出</button>
					</form>
					<p class="navbar-text navbar-right">${uName }</p>
				</ul>

			</div>
		</nav>
	</div>
</div>