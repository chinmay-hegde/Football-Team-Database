

<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<%

Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
java.util.Date date;
String s=null;
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String p_name=request.getParameter("p_name");
String p_id=request.getParameter("p_id");
String p_jno=request.getParameter("p_jno");
String p_wage=request.getParameter("p_wage");
String p_pos=request.getParameter("p_pos");
String p_care=request.getParameter("p_care");
String p_rating=request.getParameter("p_rating");
String p_age=request.getParameter("p_age");
String p_club=request.getParameter("p_club");
String p_cid=request.getParameter("p_cid");
int val = st.executeUpdate("insert into player values ('"+p_name+"','"+p_id+"','"+p_pos+"','"+p_wage+"','"+p_jno+"','"+p_age+"','"+p_care+"','"+p_rating+"','"+p_club+"','"+p_cid+"')");

con.close();
out.println("successfully insert data into database!");
out.println("</br>");
out.println("<br/><a href=view_player.jsp><b>View All Player</b></a>");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>