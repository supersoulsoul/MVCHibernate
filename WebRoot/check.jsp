<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'check.jsp' starting page</title>
    
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
    <%
    	//out.print("heihei");
    	/*String name = request.getParameter("name");
		String age = request.getParameter("age");*/
		request.getSession(false);
    	String name=session.getAttribute("name").toString();
		String age=session.getAttribute("age").toString();
		out.print(name);
		if(name==null||age==null)
		{
			out.print("empty!");
		}
		else if(name.length()<6)
		{
			out.print("too little!");
		}
     %>
  </body>
</html>
