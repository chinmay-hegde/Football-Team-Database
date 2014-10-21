<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<html>
<head>
<title>View Stadiums</title>
<link href="web.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div id="divWrapper">
<a href="http://localhost:8017/f1/front/index.jsp"><h3>Home</h3></a>
<table border="0" width="75%" cellspacing="1" cellpadding="1">
<tr>
<td width="100%">
<h2><font color="#FF0033">View Stadiums</font></h2>
<form method="POST" >
<table border="1" width="100%" cellspacing="1" cellpadding="1" bgcolor="#CCFFCC">
<tr>
<td width="20%"><b>Stadium Name:</b></td>
<td width="20%"><b>Stadium Locaction</b></td>
<td width="20%"><b>Stadium strength</b></td>
<td width="20%"><b>Ticket price</b></td>
<td width="20%"><b>Stadium Country</b></td>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String query = "SELECT * FROM stadium";
ResultSet rs = st.executeQuery(query);
while (rs.next()) {
%>

<tr>
<td width="20%"><%=rs.getString("st_name")%><br/></td>

<td width="20%"><%=rs.getString("st_location")%><br/></td>
<td width="20%"><%=rs.getString("st_strength")%><br/></td>
<td width="20%"><%=rs.getString("t_price")%><br/></td>
<td width="20%"><%=rs.getString("st_country")%><br/></td>
</tr>

<%}

rs.close();
con.close();

}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>
</tr>
</table>
</form>
</td>
</tr>
</table>

<a href="http://localhost:8017/f1/front/guest.jsp">Guest Home</a>
</div>
</body>
</html>