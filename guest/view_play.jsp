<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<html>
<head>
<style>
div.background
  {
  width:400px;
  height:500px;
  background:url(formation.png);
  border:2px solid black;
  }

</style>
<link href="web.css" rel="stylesheet" type="text/css" />
<script>
function go() {
window.location.replace("logout_coach.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
</script>

<title>View Players</title>
</head>
<body>
<div id="divWrapper">
<table border="0" width="75%" cellspacing="1" cellpadding="1">
<tr>
<td width="100%">
<h2><font color="#FF0033">View Players</font></h2>
<form method="POST" >
<table border="1" width="100%" cellspacing="1" cellpadding="1" bgcolor="#CCFFCC">
<tr>
<td width="20%"><b>Player Name:</b></td>
<td width="20%"><b>Player Position:</b></td>
<td width="20%"><b>Player Club:</b></td>

<%

String p_matno =request.getParameter("p_matno");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
//String query = " select p_name,p_club from player where p_id=(select p_pid from plays_in where p_matno='"+p_matno+"')";
String query = " select * from player where p_id in (select p_pid from plays_in where p_matno='"+p_matno+"')";
ResultSet rs = st.executeQuery(query);
Statement s = con.createStatement();
while (rs.next()) {
%>


<tr>

<td width="20%"><%=rs.getString("p_name")%><br/></td>
<td width="20%"><%=rs.getString("p_pos")%><br/></td>
<td width="20%"><%=rs.getString("p_club")%><br/></td>
</tr>


<%}



out.println("<br/><a href=view_player_choice.jsp><b><<-- Back</b></a>");
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