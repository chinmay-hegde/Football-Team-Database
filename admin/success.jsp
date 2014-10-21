<%@page import="java.util.*" %>
<head>
<link href="web.css" rel="stylesheet" type="text/css" />
<script>


function go() {
window.location.replace("logout.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
</script>
</head>
<body>


<div id="divWrapper">
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index_login.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%> to 
<h1><u>Administrator Field</u></h1><a href="javascript:go()"><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="yellow">Logout</font></li></h3></a>

<a href="http://localhost:8017/f1/front/admin/success.jsp"><h3> Admin Home</h3></a>

<div id="divLine"></div>
<h5>Please Click one of the following links</h5>
<div id="divContent">
<p>
<ul><li><b><font color="yellow">Club</font></b></li></ul>
<ul><li>----------------------<font color="orange"><a href="club/view_club.jsp">View Club</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="club/insert_club.jsp">Insert New Club</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="club/update_choice_club.jsp">Modify Club</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="club/delete_choice_club.jsp">Delete Club</a></font></li></ul>
<ul><li><b><font color="yellow">Coach</font></b></li></ul>
<ul><li>----------------------<font color="orange"><a href="coach/view_coach.jsp">View Coach</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="coach/insert_coach.jsp">Insert New Coach</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="coach/update_choice_coach.jsp">Modify Coach</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="coach/delete_choice_coach.jsp">Delete Coach</a></font></li></ul>
<ul><li><b><font color="yellow">Stadium</font></b></li></ul>
<ul><li>----------------------<font color="orange"><a href="stadium/view_stadium.jsp">View Stadium</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="stadium/insert_stadium.jsp">Insert New Stadium</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="stadium/update_choice_stadium.jsp">Modify Stadium</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="stadium/delete_choice_stadium.jsp">Delete Stadium</a></font></li></ul>
<ul><li><b><font color="yellow">Match</font></b></li></ul>
<ul><li>----------------------<font color="orange"><a href="game/view_game.jsp">View Match</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="game/insert_game.jsp">Insert New Match</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="game/update_choice_game.jsp">Modify Match</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="game/delete_choice_game.jsp">Delete Match</a></font></li></ul>
<ul><li><b><font color="yellow">Owners</font></b></li></ul>
<ul><li>----------------------<font color="orange"><a href="owns/view_owns.jsp">View Owners</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="owns/insert_owns.jsp">Insert New Owner</a></font></li></ul>
<ul><li>----------------------<font color="orange"><a href="owns/delete_choice_owns.jsp">Delete Owner</a></font></li></ul>
<ul><li><b><font color="yellow">Match Day</font></b></li></ul>
<ul><li>----------------------<font color="orange"><a href="plays_in/view_play_choice.jsp">View Match Day</font></li></ul>
<ul><li>----------------------<font color="orange"><a href="plays_in/insert_play.jsp">Insert New Players for Match</a></font></li></ul>
</p>
</div>
<%
    }
%>
</div>
</body>
