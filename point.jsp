<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<head>
<title>Football</title>
<link href="web.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="divWrapper">
<div id="divHeader"><img src="header.jpg" width="405" height="68" alt="header" /></div>
<div id="divLine"></div>
<div id="divLinks">
<div id="divNav">
<ul>
<li><a href="index.jsp" class="current">Home</a></li>
<li><a href="login_choice.jsp">Login</a></li>
<li><a href="point.jsp">Fixtures</a></li>
<li><a href="faq.jsp">Help</a></li>
<li><a href="contact.jsp">Contact</a></li>


</ul>


</div>
<table border="0" width="75%" cellspacing="1" cellpadding="1">
<tr>
<td width="100%">
<h2><font color="#FF0033">Points Table</font></h2>
<h3><font color="yellow">League:-</font><font color="white">La Liga</font></h3>
<form method="POST" >
<table border="1" width="100%" cellspacing="1" cellpadding="1" bgcolor="#CCFFCC">
<tr>
<td width="1%"><b>Position</b></td>
<td width="10%"><b>Team Name</b></td>
<td width="5%"><b>Played</b></td>
<td width="5%"><b>Won</b></td>
<td width="5%"><b>Draw</b></td>
<td width="5%"><b>Loss</b></td>
<td width="5%"><b>Points</b></td>

<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
int i=0;
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String query = "SELECT * FROM point order by pts desc";
ResultSet rs = st.executeQuery(query);
while (rs.next()) {
%>
<tr>
<td width="1%"><%=++i%> </td>

<td width="10%"> <%=rs.getString("team")%></td>

<td width="5%"><%=rs.getString("gp")%></td>

<td width="5%"><%=rs.getString("w")%></td>

<td width="5%"><%=rs.getString("d")%> </td>

<td width="5%"><%=rs.getString("l")%> </td>

<td width="5%"><%=rs.getString("pts")%> </td>
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

</div>
</body>