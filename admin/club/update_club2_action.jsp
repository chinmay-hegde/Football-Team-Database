<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<%
String club_name =request.getParameter("club_name");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String cl_country=request.getParameter("cl_country");
String cl_location=request.getParameter("cl_location");
String cl_league=request.getParameter("cl_league");
String cl_est=request.getParameter("cl_est");


int in = st.executeUpdate("UPDATE club SET club_name ='"+club_name+"', cl_country ='"+cl_country+"',cl_location='"+cl_location+"',cl_league='"+cl_league+"',cl_est='"+cl_est+"' where club_name ='"+club_name+"'");
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