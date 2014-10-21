<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>

<head>
<title>insert player</title>
<link href="web.css" rel="stylesheet" type="text/css" />

</head>

<body>

<p>&nbsp;
</p>
<div id="divWrapper">
Select Squad:-(Starting 11)

<form name="squad" action="done2.jsp" method="post">
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "fifa";
String pl_club="FC Barcelona";
String cid=((String)session.getAttribute("userid"));
String pl_matno=request.getParameter("p_matno");
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String query = "select * from player where p_cid='"+cid+"' and p_id not in(select p_pid from plays_in where p_matno='"+pl_matno+"')";
ResultSet rs = st.executeQuery(query);
Statement s = con.createStatement();
int val;
Statement sq = con.createStatement();
while (rs.next()) {

%>
<input type="checkbox" name="p_ar" value="<%=rs.getString("p_id")%>"><%=rs.getString("p_name")%><br> 
<%
}
rs.close();
con.close();
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}

%>

Confirmation:-
Match NO:-<input type="text" name="pl_matno" value="">
<input type="submit" value="Submit">

</form>
</div>
</body>

</html>
