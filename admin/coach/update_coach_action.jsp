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
String ch_id =request.getParameter("ch_id");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String query = "SELECT * FROM coach where ch_id='"+ch_id+"'";
ResultSet rs = st.executeQuery(query);
while (rs.next()) {
%>


<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="update_coach2_action.jsp">
<h2 align="center">Insert Into Database</h2>
<table border="1" width="100%">

<tr>
<td width="50%"><b>Coach name:</b></td>
<td width="50%"><input type="text" name="ch_name" value="<%=rs.getString("ch_name")%>"/> </td>
</tr>
<td width="50%"><b>Coach ID:</b></td>
<td width="50%"><input type="text" name="ch_id" value="<%=rs.getString("ch_id")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Coach Gender:</b></td>
<td width="50%"><input type="text" name="ch_gender" value="<%=rs.getString("ch_gender")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Coach Wage:</b></td>
<td width="50%"><input type="text" name="ch_wage" value="<%=rs.getString("ch_wage")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Coach Country:</b></td>
<td width="50%"><input type="text" name="ch_country" value="<%=rs.getString("ch_country")%>" size="21"></td>
</tr>
<td width="50%"><b>Coach experience:</b></td>
<td width="50%"><input type="text" name="ch_exp" value="<%=rs.getString("ch_exp")%>" size="21"></td>
</tr>
<td width="50%"><b>Coach Rating:</b></td>
<td width="50%"><input type="text" name="ch_rating" value="<%=rs.getString("ch_rating")%>" size="21"></td>
</tr>
<td width="50%"><b>Coach Age:</b></td>
<td width="50%"><input type="text" name="ch_age" value="<%=rs.getString("ch_age")%>" size="21"></td>
</tr>
<td width="50%"><b>Coach Club:</b></td>
<td width="50%"><input type="text" name="ch_club" value="<%=rs.getString("ch_club")%>" size="21"></td>
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