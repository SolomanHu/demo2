<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>题目</title>
    
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
<h3 align="center">考题</h3>
<table border="1" width="70%" align="center">
	<tr>
		<th>题目描述</th>
		<th>分数</th>
		<th>选项A</th>
		<th>选项B</th>
		<th>选项C</th>
		<th>选项D</th>
		<th>正确答案</th>
		<th>操作</th>
	</tr>
<c:forEach items="${requestScope.questionList}" var="ques">
<tr>
<td>${ques.description}</td>
<td>${ques.score}分</td>
<td>${ques.chooseA}</td>
<td>${ques.chooseB}</td>
<td>${ques.chooseC}</td>
<td>${ques.chooseD}</td>
<td>${ques.answer}</td>
<td>
	<a href="<c:url value='/QuestionServlet?method=preEdit&q_id=${ques.q_id}'/>">编辑</a>
	<a href="<c:url value='/QuestionServlet?method=delete&q_id=${ques.q_id }'/>">删除</a>
</td><br />
</tr>
</c:forEach>	

  </body>
</html>
