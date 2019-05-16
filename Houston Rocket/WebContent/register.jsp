<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>火箭队注册界面</title>
  <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
  <meta name="author" content="Vincent Garreau" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" media="screen" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/reset.css"/>
</head>
<body>
	<div id="particles-js">
		<div class="login">
		<img alt="" src="img/1.png" class="login2" height="100" width="200">
			<div class="login-top">
				注册
			</div>
			<form action="RegisterWeb" method="post">
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="img/name.png"/></div>
				<div class="login-center-input">
					<input type="text" id="userName" name="userName" value="${userName}" placeholder="请输入您的用户名" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'"/>
					<div class="login-center-input-text">用户名</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="img/password.png"/></div>
				<div class="login-center-input">
					<input type="text" id="password" name="password"value="${password}" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
					<div class="login-center-input-text">密码</div>
				</div>
			</div>
						<div class="login-center clearfix">
				<div class="login-center-img"><img src="img/password.png"/></div>
				<div class="login-center-input">
					<input type="text" id="qrmm" name="confirmation"value="${password}" placeholder="请再次输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
					<div class="login-center-input-text">确认密码</div>
				</div>
			</div>
		<tr>
		<td><input class="login-button2" type="submit" value="注册" ></td>
	</tr>
	</form>

		</div>

</div>
<script src="js/particles.min.js"></script>
<script src="js/app.js"></script>
<script type="text/javascript"></script>


<%
String errorInfo = (String)request.getAttribute("msg");// 获取错误属性
if(errorInfo != null) {
%>
<script type="text/javascript" language="javascript">
alert("<%=errorInfo%>");                                // 弹出错误信息
window.location='register.jsp' ;                            // 跳转到登录界面
</script> 
<%
}
%>

</body>
</html>