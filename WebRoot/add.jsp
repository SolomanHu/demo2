<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加题目</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/jquery/jquery.datepick.css'/>">
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/jquery/jquery.datepick.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/jquery/jquery.datepick-zh-CN.js'/>"></script>
	
<script type="text/javascript">
	
	function add() {
		$(".error").text("");
		var bool = true;
		
		if(!$(":text[name=score]").val()) {
			$("#scoreError").text("分数不能为空");
			bool = false;
		}
		if(!$(":text[name=description]").val()) {
			$("#descriptionError").text("题目内容不能为空");
			bool = false;
		}
		if(!$(":text[name=chooseA]").val()) {
			$("#chooseAError").text("选项A不能为空");
			bool = false;
		}
		if(!$(":text[name=chooseB]").val()) {
			$("#chooseBError").text("选项B不能为空");
			bool = false;
		}
		if(!$(":text[name=chooseC]").val()) {
			$("#chooseCError").text("选项C不能为空");
			bool = false;
		}
		if(!$(":text[name=chooseD]").val()) {
			$("#chooseDError").text("选项D不能为空");
			bool = false;
		}
		if(!$(":text[name=answer]").val()) {
			$("#answerError").text("正确答案不能为空");
			bool = false;
		}
		if(bool) {
			$("form").submit();
		}
	}
	
</script>
<style type="text/css">
	.error {color:red;}
</style>
  </head>
  
  <body>
<h3 align="center">添加题目</h3>
<form action="<c:url value='/QuestionServlet'/>" method="post">
	<input type="hidden" name="method" value="add"/>
<table border="0" align="center" width="40%" style="margin-left: 100px;">
	
	<tr>
		<td>分数</td>
		<td>
			<input type="text" name="score"/>
		</td>
		<td>
			<label id="scoreError" class="error">&nbsp;</label>
		</td>	
	</tr>
	
	<tr>
		<td>题目内容</td>
		<td>
				<input type="text" name="description"/>
		</td>
		<td>
			<label id="descriptionError" class="error">&nbsp;</label>
		</td>
	</tr>
	<tr>
		<td>选项A</td>
		<td>
			<input type="text" name="chooseA"/>
		</td>
		<td>
			<label id="chooseAError" class="error">&nbsp;</label>
		</td>	
	</tr>
	<tr>
		<td>选项B</td>
		<td>
			<input type="text" name="chooseB"/>
		</td>
		<td>
			<label id="chooseBError" class="error">&nbsp;</label>
		</td>	
	</tr>
	<tr>
		<td>选项C</td>
		<td>
			<input type="text" name="chooseC"/>
		</td>
		<td>
			<label id="chooseCError" class="error">&nbsp;</label>
		</td>	
	</tr>
	<tr>
		<td>选项D</td>
		<td>
			<input type="text" name="chooseD"/>
		</td>
		<td>
			<label id="chooseDError" class="error">&nbsp;</label>
		</td>	
	</tr>
	<tr>
		<td>正确答案</td>
		<td>
			<input type="text" name="answer"/>
		</td>
		<td>
			<label id="answerError" class="error">&nbsp;</label>
		</td>	
	</tr>
	
	<tr>
		<td>&nbsp;</td>
		<td>
			<input type="button" value="添加题目" onclick="add()"/>
			<input type="reset" value="重置"/>
		</td>
		<td>&nbsp;</td>
	</tr>
</table>
</form>
  </body>
</html>
