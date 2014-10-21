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

<title>Insert New Match</title>
<script src="htmlDatePicker.js" type="text/javascript"></script>
	<link href="htmlDatePicker.css" rel="stylesheet">
<script language="javascript" src="protoplasm.js"></script> 

<script language="javascript">  Protoplasm.use('timepicker').transform('input.timepicker','use24hrs'); </script>
</head>

<body>
<div id="divWrapper">
<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="insert_game_action.jsp">

<h2 align="center">Insert Into Database</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Match No:</b></td>
<td width="50%"><input name="match_no" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Match League:</b></td>
<td width="50%"><input name="m_league" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Match Date:</b></td>
<td width="50%"><input type="text" name="m_date" id="SelectedDate" readonly onClick="GetDate(this);"></td>
</tr>
<tr>
<td width="50%"><b>Match Time:</b></td>
<td width="50%"><input name="m_time" type="text" value="" class="timepicker" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Match Between:</b></td>
<td width="50%"><input name="m_teams" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<td width="50%"><b>Stadium Name:</b></td>
<td width="50%"><input name="m_stname" type="text" value="" size=20 maxlength="22"/> </td>
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

