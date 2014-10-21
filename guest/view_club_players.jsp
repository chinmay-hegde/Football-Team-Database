<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<html>
<head>
<title>Retrive value from database</title>
<link href="web.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="divWrapper">
<a href="http://localhost:8017/f1/front/index.jsp"><h3>Home</h3></a>
<table border="0" width="75%" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<h2><font color="#FF0033">Players</font></h2>
<form method="POST" >
<table border="1" width="100%" cellspacing="0" cellpadding="0" bgcolor="#CCFFCC">
<tr>
<td width="50%"><b>Player Name:</b></td>
<td width="50%"><b>Player ID</b></td>
<td width="50%"><b>Player Position</b></td>
<td width="50%"><b>Player Rating</b></td>
<td width="50%"><b>Player Club</b></td>
<td width="50%"><b>Player jersey No</b></td>


<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
String club_name=request.getParameter("club_name");
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String query = "SELECT * FROM player where p_club like'%"+club_name+"%'";
ResultSet rs = st.executeQuery(query);
while (rs.next()) {
%>

<tr>
<td width="50%" valign="right"><%=rs.getString("p_name")%><br/></td>

<td width="50%"><%=rs.getString("p_id")%><br/></td>
<td width="50%"><%=rs.getString("p_pos")%><br/></td>
<td width="50%"><%=rs.getString("p_rating")%><br/></td>
<td width="50%"><%=rs.getString("p_club")%><br/></td>
<td width="50%"><%=rs.getString("p_jno")%><br/></td>

</tr>

<%}

out.println("<br/><a href=view_player_choice.jsp><b>Go Back</b></a>");
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