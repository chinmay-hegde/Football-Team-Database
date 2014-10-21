

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
String cl_name=request.getParameter("club_name");
String cl_country=request.getParameter("cl_country");
String cl_location=request.getParameter("cl_location");
String cl_league=request.getParameter("cl_league");
String cl_est=request.getParameter("cl_est");


int val = st.executeUpdate("insert into club values ('"+cl_name+"','"+cl_country+"','"+cl_location+"','"+cl_league+"','"+cl_est+"')");

con.close();
out.println("successfully insert data into database!");
out.println("</br>");
out.println("<br/><a href=view_club.jsp><b>View Clubs</b></a>");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>