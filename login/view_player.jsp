<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<html>
<head>
<script>
function go() {
window.location.replace("logout_coach.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
</script>
<link href="web.css" rel="stylesheet" type="text/css" />
<title>View Players</title>
</head>
<body>
<div id="divWrapper">
<table border="1" width="100%" cellspacing="1" cellpadding="1">
<tr>
<td width="100%">
<h2><font color="#FF0033">View Player</font></h2>
<form method="POST" >
<table border="1" width="130%" cellspacing="1" cellpadding="1" bgcolor="#CCFFCC">
<a href="http://localhost:8017/f1/front/login/success_coach.jsp">Manager Home</a>
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
String query = "SELECT * FROM player where p_id='"+p_id+"'";
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
</div>
</body>
</html>