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

<title>Insert New Stadium</title>
</head>

<body>
<div id="divWrapper">
<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="insert_stadium_action.jsp">

<h2 align="center">Insert new Stadium</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Stadium Name:</b></td>
<td width="50%"><input name="st_name" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Stadium Location:</b></td>
<td width="50%"><input name="st_location" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Stadium Strength:</b></td>
<td width="50%"><input type="text" name="st_strength" value="20000" size="21"></td>
</tr>
<tr>
<td width="50%"><b>ticket Price:</b></td>
<td width="50%"><input type="text" name="t_price" value="$10" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Stadium Country:</b></td>
<td width="50%"><input name="st_country" type="text"  size=20 maxlength="22"/> </td>
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

