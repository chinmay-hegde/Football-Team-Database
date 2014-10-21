<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>

<head>
<title>insert player</title>
<link href="web.css" rel="stylesheet" type="text/css" />

</head>

<body>

<p>&nbsp;
</p>
<div id="divWrapper">
<a href="http://localhost:8017/f1/front/index.jsp"><h3>Home</h3></a>

<a href="http://localhost:8017/f1/front/guest.jsp">Guest Home</a>
<p>
&nbsp;
</p>

<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="view_player.jsp">

<h2 align="center">Search Player by Player ID</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>player ID:</b></td>
<td width="50%"><input name="p_id" type="text" value="" size=20 maxlength="22"/> </td>
</table>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</tr>
</form>
</td>
</tr>
<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="view_player_name.jsp">

<h2 align="center">Search Player by player name</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Player Name:</b></td>
<td width="50%"><input name="p_id" type="text" value="" size=20 maxlength="22"/> </td>
</table>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</tr>
</form>
</td>
</tr>


<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="view_club_players.jsp">

<h2 align="center">Search Player by club Name</h2>
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
<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="view_play.jsp">

<h2 align="center">Search Player by in specific match</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Match No:</b></td>
<td width="50%"><input name="p_matno" type="text" value="" size=20 maxlength="22"/> </td>
</table>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</tr>
</form>
</td>
</tr>

</div>
</body>

</html>
