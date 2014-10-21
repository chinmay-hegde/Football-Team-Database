<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<html>
<head>
<title>View Players</title>
<link href="web.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="divWrapper">
<a href="http://localhost:8017/f1/front/index.jsp"><h3>Home</h3></a>
<table border="1" width="100%" cellspacing="1" cellpadding="1">
<tr>
<td width="100%">
<h2><font color="#FF0033">View Player</font></h2>
<form method="POST" >
<table border="1" width="130%" cellspacing="1" cellpadding="1" bgcolor="#CCFFCC">
<%
String p_id=request.getParameter("p_id");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String query = "SELECT * FROM player where p_name like'%"+p_id+"%'";
ResultSet rs = st.executeQuery(query);
while (rs.next()) {
%>
<table>
<td width="50%"><b>Player Name:</b></td>
<td width="50%"><%=rs.getString("p_name")%> </td>
</tr>
<tr>
<td width="50%"><b>Player ID:</b></td>
<td width="50%"> <%=rs.getString("p_id")%></td>
</tr>
<tr>
<td width="50%"><b>Player Position:</b></td>
<td width="50%"><%=rs.getString("p_pos")%></td>
</tr>
<tr>
<td width="50%"><b>Player Wage:</b></td>
<td width="50%"><%=rs.getString("p_wage")%></td>
</tr>
<tr>
<td width="50%"><b>Player jersey No:</b></td>
<td width="50%"><%=rs.getString("p_jno")%> </td>
</tr>
<tr>
<td width="50%"><b>Player Career:</b></td>
<td width="50%"><%=rs.getString("p_care")%> </td>
</tr>
<tr>
<td width="50%"><b>Player Rating:</b></td>
<td width="50%"><%=rs.getString("p_rating")%> </td>
</tr>
<tr>
<td width="50%"><b>Player Age:</b></td>
<td width="50%"><%=rs.getString("p_age")%> </td>
</tr>
<tr>
<td width="50%"><b>Player Club:</b></td>
<td width="50%"><%=rs.getString("p_club")%> </td>
</tr>
<td width="50%"><b>Player Coach ID:</b></td>
<td width="50%"><%=rs.getString("p_cid")%></td>
</tr>
</table>



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
<a href="http://localhost:8017/f1/front/guest/view_player_choice.jsp">View Another Player</a>
<p>
<a href="http://localhost:8017/f1/front/guest.jsp">Guest Home</a>
</p>
</div>
</body>
</html>