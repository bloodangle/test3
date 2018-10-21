<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import="java.sql.*"%> 
<%@ page import="java.io.*,java.util.*,java.text.*" %>     
    
    <%  	
	//response.setIntHeader("Refresh", 1); //A  刷新頁面
	Calendar cal = Calendar.getInstance(); // 獲得時間
	Calendar calendar = new GregorianCalendar();

	// SimpleDateFormat Date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); // 時間格式，不會刷新

	String am_pm;

	int year =calendar.get(Calendar.YEAR);
	int month=calendar.get(Calendar.MONTH)+1;
	int day =calendar.get(Calendar.DAY_OF_MONTH);
	int hour =calendar.get(Calendar.HOUR_OF_DAY);
	int minute =calendar.get(Calendar.MINUTE);
	int second = calendar.get(Calendar.SECOND);
	if(calendar.get(Calendar.AM_PM) == 0)
		am_pm = "AM";
	else
		am_pm = "PM";
	
	// A 時間補0
	String Day;
	if (day < 10)
		Day = "0"+ day;
	else
		Day = ""+ day;
	
	String Minute;
	if (minute < 10)
		Minute = "0"+ minute;
	else
		Minute = ""+ minute;
	
	String Second;
	if (second < 10)
		Second= "0"+ second;
	else
		Second = ""+ second;
	
	String CT = year +"."+ month + "."+ Day + "      " + hour+":"+ Minute +":"+ Second +" "+ am_pm;

    // <%="時間(UTF+8):\t" + Date.format(Calendar.getInstance().getTime()) + "\t\t" + CT + "\n"% >
    
		
	out.println("<TT>時間(UTF+9):\t" + "\t\t" + CT + "\n</TT>");

    %>
    
    