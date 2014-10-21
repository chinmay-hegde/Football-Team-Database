<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<html>
<head>
<title>View Managers</title>
<link href="web.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div id="divWrapper">
<a href="http://localhost:8017/f1/front/index.jsp"><h3>Home</h3></a>
<table border="0" width="75%" cellspacing="1" cellpadding="1">
<tr>
<td width="100%">
<h2><font color="#FF0033">View Managers</font></h2>
<form method="POST" >
<table border="1" width="100%" cellspacing="1" cellpadding="1" bgcolor="#CCFFCC">
<tr>
<td width="20%"><b>Coach Name:</b></td>
<td width="20%"><b>Coach ID</b></td>
<td width="20%"><b>Coach Gender</b></td>
<td width="20%"><b>Coach Wage</b></td>
<td width="20%"><b>Coach Country</b></td>
<td width="20%"><b>Coach Experience</b></td>
<td width="20%"><b>Coach rating</b></td>
<td width="40%"><b>Coach Age</b></td>
<td width="40%"><b>Coach club</b></td>
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
String query = "SELECT * FROM coach";
ResultSet rs = st.executeQuery(query);
while (rs.next()) {
%>

<tr>
<td width="20%"><%=rs.getString("ch_name")%><br/></td>

<td width="20%"><%=rs.getString("ch_id")%><br/></td>
<td width="20%"><%=rs.getString("ch_gender")%><br/></td>
<td width="20%"><%=rs.getString("ch_wage")%><br/></td>
<td width="20%"><%=rs.getString("ch_country")%><br/></td>
<td width="20%"><%=rs.getString("ch_exp")%><br/></td>
<td width="20%"><%=rs.getString("ch_rating")%><br/></td>
<td width="20%"><%=rs.getString("ch_age")%><br/></td>
<td width="40%"><%=rs.getString("ch_club")%><br/></td>
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