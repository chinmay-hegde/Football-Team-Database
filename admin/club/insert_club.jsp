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
<title>Insert New Club</title>
</head>

<body>
<div id="divwrapper">
<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="insert_club_action.jsp">

<h2 align="center">Insert Into Database</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Club Name:</b></td>
<td width="50%"><input name="club_name" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Club Country:</b></td>
<td width="50%"><input name="cl_country" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Club Location:</b></td>
<td width="50%"><input type="text" name="cl_location" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Club League:</b></td>
<td width="50%"><input name="cl_league" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Club Established:</b></td>
<td width="50%"><input name="cl_est" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
</table>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</form>
</td>
</tr>
</table>
</div>
</body>
</html>

