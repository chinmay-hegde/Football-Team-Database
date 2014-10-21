<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>

<head>
<title>insert player</title>
<link href="web.css" rel="stylesheet" type="text/css" />

</head>

<body>
<div id="divWrapper">
<%
String p_ar[]= request.getParameterValues("p_ar");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
java.util.Date date;
String s=null;
String p_matno=request.getParameter("pl_matno");
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
for(int i=0;i<p_ar.length;i++)
{
Statement st = con.createStatement();
int val = st.executeUpdate("insert into plays_in values ('"+p_ar[i]+"','"+p_matno+"')");
}
out.println("successfully insert data into database!");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}

%>