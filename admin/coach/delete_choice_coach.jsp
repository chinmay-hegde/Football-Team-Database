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

<title>delete coach</title>
</head>

<body>
<div id="divWrapper">
<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="delete_coach.jsp">

<h2 align="center">Type the club name you want to delete</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Coach ID:</b></td>
<td width="50%"><input name="ch_id" type="text" value="" size=20 maxlength="22"/> </td>
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
