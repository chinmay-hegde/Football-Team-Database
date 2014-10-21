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
<title>Insert New Coach</title>
</head>

<body>
<div id="divWrapper">
<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="insert_coach_action.jsp">

<h2 align="center">Insert new Coach</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Coach Name:</b></td>
<td width="50%"><input name="ch_name" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Coach ID:</b></td>
<td width="50%"><input name="ch_id" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Coach Gender:</b></td>
<td width="50%"><input type="text" name="ch_gender" value="Male" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Coach Wage:</b></td>
<td width="50%"><input type="text" name="ch_wage" value="$100" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Coach Countrey:</b></td>
<td width="50%"><input name="ch_country" type="text"  size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Coach Experience:</b></td>
<td width="50%"><input name="ch_exp" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Coach Rating:</b></td>
<td width="50%"><input name="ch_rating" type="text" value="60" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Coach Age:</b></td>
<td width="50%"><input name="ch_age" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Coach Club:</b></td>
<td width="50%"><input name="ch_club" type="text" value="" size=20 maxlength="22"/> </td>
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

