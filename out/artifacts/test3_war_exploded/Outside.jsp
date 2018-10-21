<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>確認</title>
</head>

<body>
<h1>以下是回傳訊息</h1>
<ul>

	<li>
	<p>
	<b>你的名子:</b>

		<%String Accu = new String((request.getParameter("Accu")).getBytes("ISO-8859-1"),"UTF-8");%>
		<%=Accu%>
		<%String Pw = new String((request.getParameter("Pw")).getBytes("ISO-8859-1"),"UTF-8");%>
		<%=Pw%>
		
		
	</p>
	</li>
	
</ul>
</body>
</html>