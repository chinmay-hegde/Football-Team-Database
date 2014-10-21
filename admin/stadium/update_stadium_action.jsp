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

<title>Update Stadium</title>
</head>

<body>
<div id="divWrapper">
<%
String st_name =request.getParameter("st_name");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String query = "SELECT * FROM stadium where st_name='"+st_name+"'";
ResultSet rs = st.executeQuery(query);
while (rs.next()) {
%>


<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="update_stadium2_action.jsp">
<h2 align="center">Insert Into Database</h2>
<table border="1" width="100%">

<tr>
<td width="50%"><b>Stadium name:</b></td>
<td width="50%"><input type="text" name="st_name" value="<%=rs.getString("st_name")%>"/> </td>
</tr>
<td width="50%"><b>Stadium location</b></td>
<td width="50%"><input type="text" name="st_location" value="<%=rs.getString("st_location")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Stadium Strength:</b></td>
<td width="50%"><input type="text" name="st_strength" value="<%=rs.getString("st_strength")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Ticket Price:</b></td>
<td width="50%"><input type="text" name="t_price" value="<%=rs.getString("t_price")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Stadium Country:</b></td>
<td width="50%"><input type="text" name="st_country" value="<%=rs.getString("st_country")%>" size="21"></td>
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