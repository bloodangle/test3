<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%> 
<%@ page import="java.io.*,java.util.*,java.text.*" %>


<html>
<head><title>確認</title></head>
<body>
<h1>連結結果為：</h1><hr>

<%
	Connection dbCon = null;  // 宣告物件變數
	Statement stmt = null;
	// A 驅動程式參數
	String sDriver = "com.mysql.cj.jdbc.Driver";
	// String create = "CREATE TABLE User2 (" + "    id     INTEGER " +  "  , name    VARCHAR(20) " +  "  , passwd  VARCHAR(20))"; //創作Table

	// ?serverTimezone=UTC&characterEncoding=utf-8  << 替時區問題解決
	String sCon = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&characterEncoding=utf-8&user=root&password=tio20181101";

try {
   // A 載入 JDBC driver 
   Class.forName(sDriver);
   // A 建立資料連結和Statement物件
   dbCon = DriverManager.getConnection(sCon);

   if ( dbCon != null )
	  
      out.print("建立資料來源連結成功!<br>");
   stmt = dbCon.createStatement();
	//   stmt.executeUpdate(create);
   if ( stmt != null )
      out.print("建立Statement物件成功!<br>");
   stmt.close();   // 關閉Statement物件
   dbCon.close();  // 關閉連結
}
catch(SQLException e) {
   out.print(e);   
}

%>


 <!--123 -->

</head>

</body>
</html>
