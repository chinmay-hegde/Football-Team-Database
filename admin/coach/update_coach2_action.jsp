<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<%
String ch_id =request.getParameter("ch_id");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String ch_name=request.getParameter("ch_name");
String ch_gender=request.getParameter("ch_gender");
String ch_wage=request.getParameter("ch_wage");
String ch_country=request.getParameter("ch_country");
String ch_exp=request.getParameter("ch_exp");
String ch_rating=request.getParameter("ch_rating");
String ch_age=request.getParameter("ch_age");
String ch_club=request.getParameter("ch_club");



int in = st.executeUpdate("UPDATE coach SET ch_name ='"+ch_name+"',ch_gender ='"+ch_gender+"', ch_country ='"+ch_country+"',ch_club='"+ch_club+"',ch_exp='"+ch_exp+"',ch_wage='"+ch_wage+"',ch_age='"+ch_age+"',ch_rating='"+ch_rating+"' where ch_id ='"+ch_id+"'");
con.close();
out.println("successfully updated");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>