<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>

<head>
<link href="web.css" rel="stylesheet" type="text/css" />
<script>
function go() {
window.location.replace("logout_coach.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
</script>

<title>Update Database</title>
</head>

<body>
<div id="divWrapper">
<%
String match_no =request.getParameter("match_no");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String query = "SELECT * FROM game where match_no='"+match_no+"'";
ResultSet rs = st.executeQuery(query);
while (rs.next()) {
%>


<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="update_game2_action.jsp">
<h2 align="center">Insert Into Database</h2>
<table border="1" width="100%">

<tr>
<td width="50%"><b>Match No:</b></td>
<td width="50%"><input type="text" name="match_no" value="<%=rs.getString("match_no")%>"/> </td>
</tr>
<tr>
<td width="50%"><b>Match League:</b></td>
<td width="50%"><input type="text" name="m_league" value="<%=rs.getString("m_league")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Match Date:</b></td>
<td width="50%"><input type="text" name="m_date" value="<%=rs.getString("m_date")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Match Time:</b></td>
<td width="50%"><input type="text" name="m_time" value="<%=rs.getString("m_time")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Match Between:</b></td>
<td width="50%"><input type="text" name="m_teams" value="<%=rs.getString("m_teams")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Stadium Name:</b></td>
<td width="50%"><input type="text" name="m_stname" value="<%=rs.getString("m_stname")%>" size="21"></td>
</tr>
</table>
<p><input type="submit" value="Update" name="submit">
<input type="reset" value="Reset" name="reset"></p>

</form>
</td>
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
</div>
</body>

</html>