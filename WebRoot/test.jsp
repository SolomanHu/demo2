<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
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
<form action="<c:url value='/QuestionServlet'/>" method="post">
<input type="hidden" name="method" value="result">
<c:set var="i" value="${0 }"></c:set>
<c:forEach items="${requestScope.questionList}" var="qst"> 
${qst.description}
(${qst.score}分)<br/>
<input type="hidden" name="q_id${i }" value="${qst.q_id}"/>


<input type="radio" name="question_${qst.q_id }" value="${qst.chooseA}" />A.&nbsp;${qst.chooseA}<br />
<input type="radio" name="question_${qst.q_id }" value="${qst.chooseB}" />B.&nbsp;${qst.chooseB}<br />
<input type="radio" name="question_${qst.q_id}" value="${qst.chooseC}" />C.&nbsp;${qst.chooseC}<br />
<input type="radio" name="question_${qst.q_id }" value="${qst.chooseD}" />D.&nbsp;${qst.chooseD}<br /><br />
<c:set var="i" value="${i+1}"></c:set>
</c:forEach>	
<input type="hidden" name="length" value="${i }"/>
<input type="submit" name="submit_button" value="提交"><br /><br />
</form>

  </body>
</html>
