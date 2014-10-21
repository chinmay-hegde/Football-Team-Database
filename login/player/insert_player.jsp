<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>

<head>
<title>Insert New Player</title>
</head>

<body>

<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="insert_player_action.jsp">

<h2 align="center">Insert new Coach</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Player Name:</b></td>
<td width="50%"><input name="p_name" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Player ID:</b></td>
<td width="50%"><input name="p_id" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Player Position:</b></td>
<td width="50%"><input type="text" name="p_pos" value="" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Player Wage:</b></td>
<td width="50%"><input type="text" name="p_wage" value="$100" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Player jersey No:</b></td>
<td width="50%"><input name="p_jno" type="text"  size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Player Career:</b></td>
<td width="50%"><input name="p_care" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Player Rating:</b></td>
<td width="50%"><input name="p_rating" type="text" value="49" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Player Age:</b></td>
<td width="50%"><input name="p_age" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<tr>
<td width="50%"><b>Player Club:</b></td>
<td width="50%"><input name="p_club" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
<td width="50%"><b>Player Coach ID:</b></td>
<td width="50%"><input name="p_cid" type="text" value="" size=20 maxlength="22"/> </td>
</tr>
</table>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</form>
</td>
</tr>
</table>
</body>
</html>

