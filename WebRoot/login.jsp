<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
 <h1 align="center">欢迎进入在线考试系统</h1>
	<div align="center" width=50%>
	<form action="/demo2/LoginServlet" method="post">
	<input type="radio" name="user" value="teacher" />教师
	<input type="radio" name="user" value="student" checked="checked"/>学生<br />
	<input type="hidden" name="method" value="login"/>
用户名<input type="text" name="s_name" value="${form.s_name }"/><br />
密&nbsp;&nbsp;&nbsp;&nbsp;码<input type="password" name="s_password" value="${form.s_password }"/><br/><br/>

 	<input type="submit" value="登录"><br />
 	<p style="color: red; font-weight: 900">${msg }</p>
 	</form>
    </div>
  </body>
</html>
