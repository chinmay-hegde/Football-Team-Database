<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>

<head>
<title>delete stadium</title>
</head>

<body>

<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="delete_owns.jsp">

<h2 align="center">Type the stadium name and club name you want to delete</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Stadium Name:</b></td>
<td width="50%"><input name="o_stname" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Club Name:</b></td>
<td width="50%"><input name="o_clname" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
</table>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</tr>
</form>
</td>
</tr>

</body>
</html>
