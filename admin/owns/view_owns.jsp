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

<title>View Owners</title>
</head>
<body>
<div id="divWrapper".
<table border="0" width="75%" cellspacing="1" cellpadding="1">
<tr>
<td width="100%">
<h2><font color="#FF0033">View Owners</font></h2>
<form method="POST" >
<table border="1" width="100%" cellspacing="1" cellpadding="1" bgcolor="#CCFFCC">
<tr>
<td width="20%"><b>Stadium Name:</b></td>
<td width="20%"><b>Stadium Owner Club</b></td>
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
String query = "SELECT * FROM owns";
ResultSet rs = st.executeQuery(query);
while (rs.next()) {
%>

<tr>
<td width="20%"><%=rs.getString("o_stname")%><br/></td>

<td width="20%"><%=rs.getString("o_clname")%><br/></td>

</tr>

<%}

out.println("<br/><a href=insert_owns.jsp><b>Insert Data page</b></a>");
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
</div>
</table>
</body>
</html>