<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<head>
<script>
function go() {
window.location.replace("logout_coach.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
</script>
<link href="web.css" rel="stylesheet" type="text/css" />
<title>delete player</title>
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
<%
String p_id =request.getParameter("p_id");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
Statement s=con.createStatement();
ResultSet r;
r=s.executeQuery("select p_id from player where p_id='"+p_id+"'");
if(r.next()) {
int in = st.executeUpdate("DELETE FROM player where p_id='"+p_id+"'");
con.close();
out.println("successfully deleted");
}

else {
out.println("Player ID not Found");
}
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}


%>

<%
    }
%>
</div>
</div>
</body>