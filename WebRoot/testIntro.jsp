<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>网络在线考试</title>
<html:base />
<link href="CSS/style.css" rel="stylesheet">
</head>
<body>

<table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="131" background="Images/top_bg.jpg">&nbsp;</td>
  </tr>
</table>
<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="774" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              
			  <td width="24%" align="right"><img src="Images/m_ico1.gif" width="5" height="9">
			    <html:link page="/index.jsp" >返回首页</html:link>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
<html:form action="/manage/lesson.do?action=selectLesson" method="post">
 <table width="100%" height="253"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="81" colspan="3" align="center" class="word_orange1">考试须知</td>
</tr>
  <tr>
    <td width="12%">&nbsp;</td>
    <td width="77%" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;XXXXXXXXXXXXXXXXXXXXXXXXX<br/><br/>
  <form action="/demo2/QuestionServlet" method="post">
  <input type="hidden" name="method" value="test">
   <input align="center" valign="button" type="submit" value="点击开始考试"/>
  <form> 	</td>
    <td width="11%">&nbsp;</td>
  </tr>
 </table> 
 
</html:form>
        </td>
      </tr>
    </table>
</td>
  </tr>
</table>


</body>
</html>

