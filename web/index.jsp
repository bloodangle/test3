<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.text.*" %>


<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>歡迎</title>
</head>

<body>
	<form action="Outside.jsp" method="GET">
	
    <!--123 -->

	<br>
	<br>
	<h4>請輸入資訊</h4>
	
	帳號: <input type="text" name="Accu">
	<br>
	密碼: <input type="text" name="Pw" />
	<input type="submit" value="Submit" />	
   

	

	</form>
</body>

<div id="showtime">  </div>

<script type="text/javascript" src="jquery-3.3.1.min.js"></script>

<script>
    // window.onload = ;
	setInterval(function ()  // 隨時抓取
	{
	    $.ajax({
        type: 'GET',
        url: "ajax.jsp", //來源
        dataType: 'text', //傳回類型
        success: function(msg) {
            //document.getElementById("showtime").innerHTML = msg;
            $("#showtime").html(msg);
        },
        error: function() {
            alert('Error');
        }
    })}, 1000)
</script>

</html>