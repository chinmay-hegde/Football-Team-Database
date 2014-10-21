

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
String ch_name=request.getParameter("ch_name");
String ch_id=request.getParameter("ch_id");
String ch_gender=request.getParameter("ch_gender");
String ch_wage=request.getParameter("ch_wage");
String ch_country=request.getParameter("ch_country");
String ch_exp=request.getParameter("ch_exp");
String ch_rating=request.getParameter("ch_rating");
String ch_age=request.getParameter("ch_age");
String ch_club=request.getParameter("ch_club");
int val = st.executeUpdate("insert into coach values ('"+ch_name+"','"+ch_id+"','"+ch_gender+"','"+ch_wage+"','"+ch_country+"','"+ch_exp+"','"+ch_rating+"','"+ch_age+"','"+ch_club+"')");

con.close();
out.println("successfully insert data into database!");
out.println("</br>");
out.println("<br/><a href=view_coach.jsp><b>View All Coaches</b></a>");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>