<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>
<link href="web.css" rel="stylesheet" type="text/css" />
<script>
function go() {
window.location.replace("logout_coach.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
</script>
<head>
<title>Update Database</title>
</head>

<body>
<div id="divWrapper">
<%
String club_name =request.getParameter("club_name");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String query = "SELECT * FROM club where club_name='"+club_name+"'";
ResultSet rs = st.executeQuery(query);
while (rs.next()) {
%>


<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="update_club2_action.jsp">
<h2 align="center">Insert Into Database</h2>
<table border="1" width="100%">

<tr>
<td width="50%"><b>Club name:</b></td>
<td width="50%"><input type="text" name="club_name" value="<%=rs.getString("club_name")%>"/> </td>
</tr>
<tr>
<td width="50%"><b>Club Country:</b></td>
<td width="50%"><input type="text" name="cl_country" value="<%=rs.getString("cl_country")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Club Location:</b></td>
<td width="50%"><input type="text" name="cl_location" value="<%=rs.getString("cl_location")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Club League:</b></td>
<td width="50%"><input type="text" name="cl_league" value="<%=rs.getString("cl_league")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Club Established:</b></td>
<td width="50%"><input type="text" name="cl_est" value="<%=rs.getString("cl_est")%>" size="21"></td>
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