<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>

<head>
<title>Choose Club</title>
<link href="web.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="divWrapper">
<a href="http://localhost:8017/f1/front/index.jsp"><h3>Home</h3></a>

<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="view_club_players.jsp">

<h2 align="center"><font color="blue"> Type the club name to see players...</font></h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Club Name:</b></td>
<td width="50%"><input name="club_name" type="text" value="" size=20 maxlength="22"/> </td>
</table>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</tr>
</form>
</td>
</tr>

<a href="http://localhost:8017/f1/front/guest.jsp">Guest Home</a>
</div>
</body>
</html>
