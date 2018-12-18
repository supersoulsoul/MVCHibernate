<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'input.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script src="ajax.js">
</script>
	</head>

	<body>
		<form method="post" action="insert" >
			<p>
				&nbsp;
			</p>
			<p>
				&nbsp;
				<input type="text" name="name" id="name" onblur="look()">
			</p>
			<p>
				<input type="text" name="age" id="age" >
				<span id="sub"></span>
				<input type="submit" name="button1" id="button1" value="提交">
			</p>
			<p>
				&nbsp;
			</p>
			<p>
				&nbsp;
			</p>
			<p>
				&nbsp;
			</p>
		</form>
		<%
		String name=request.getParameter("name");
		session.setAttribute("name",name);
		String age=request.getParameter("age");
		 %>
	<script>
		
		function look(){
		var name=document.getElementById("name").value;
		var age=document.getElementById("age").value;
		var span=document.getElementById("sub");
		var btn=document.getElementById("button1");
		var xhr=new XMLHttpRequest();
		
		
		xhr.onreadystatechange=function(){
			if(xhr.readyState=4)
			{
				if(xhr.status=200){
					span.innerHTML=xhr.responseText;
				}
				else
				alert(xhr.status);
			}
		}
		xhr.open('get',"http://super:8080/MVCHibernate/src/com/checkServlet.do?name="+name,true);
		xhr.send();
		/*if(name==""||age=="")
		span.innerHTML="不能填写空字段";
		else
		span.innerHTML="";*/
		/*ajax('get','check.js','','text').then(function(data)
		{
			span.innerHTML=data;
		}
		).catch(
			function(err){
				alert(err);
			}
		)*/
		}
			
	</script>
	</body>
</html>
