<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>请注册</title>
</head>
<body>

	<div style="margin:0 auto; padding-top: 100px;" align="center">
		<form action="dotestoutput.html" method="post">
			<p>
				<span>1：</span><input type="text" name="uId" value=${uId } }>
			</p>
			<p>
				<span>2：</span><input type="text" name="uName" value=${uName }>
			</p>
			<p>
				<span>3：</span><input type="password" name="uPassword" value=${uPassword }>
			</p>
			<p>
				<span>4：</span><input type="text" name="uLevel" value=${uLevel }>
			</p>
			<p>
				<span>5：</span><input type="text" name="age">
			</p>			
			<p>
				<input type="submit" value="注册">
			</p>
		</form>
	</div>

</body>
</html>