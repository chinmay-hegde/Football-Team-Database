<%@page import="java.util.*" %>
<head>
<link href="web.css" rel="stylesheet" type="text/css" />
<script>
function go() {
window.location.replace("logout_coach.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
</script>
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
<h5>Please Click one of the following</h5>
<p>
<a href="view_player_choice.jsp"><ul><li>See Squad</ul></li></a>
<p>
<li><a href="view_play_choice.jsp">View match Squad</a><b&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">Select Squad for next match</font></li>
<form method="POST" action="squad_select.jsp">
<table border="1" width="100%">
<tr>
<td width="50%"><b>Match NO</b></td>
<td width="50%"><input name="p_matno" type="text" value="" size=20 maxlength="22"/> </td>
</table>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</tr>
</form>
<a href="insert_player.jsp"><ul><li>Add new Player</ul></li></a>
<p>
<p>
<a href="update_choice_player.jsp"><ul><li>Modify Player</ul></li></a>
</p>
<p>
<a href="delete_choice_player.jsp"><ul><li>Release player from the club</ul></li></a>
</p>




<%
    }
%>
</div>
</div>
</body>
