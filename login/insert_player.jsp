<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>

<head>
<script>
function go() {
window.location.replace("logout_coach.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
</script>
<link href="web.css" rel="stylesheet" type="text/css" />
<title>Insert New Player</title>
</head>

<body>
<div id="divWrapper">
<div id="divContent">
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index_login.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%> to 
<h1><u>Manager Office</u></h1><a href="javascript:go()"><h3><&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Logout</li></h3></a>


<div id="divLine"></div>
<a href="http://localhost:8017/f1/front/login/success_coach.jsp">Manager Home</a>
<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="insert_player_action.jsp">

<h2 align="center">Insert new Player</h2>
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
<%
    }
%>
</div>
</div>
</body>
</html>

