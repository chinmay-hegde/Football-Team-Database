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

<title>Insert Players</title>
</head>

<body>
<div id="divWrapper">
<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="insert_play_action.jsp">

<h2 align="center">Insert new Owner</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Player ID:</b></td>
<td width="50%"><input name="p_pid" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Match No:</b></td>
<td width="50%"><input name="p_matno" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
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

