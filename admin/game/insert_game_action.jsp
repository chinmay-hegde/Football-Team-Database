

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
String cl_name=request.getParameter("match_no");
String cl_country=request.getParameter("m_league");
String cl_location=request.getParameter("m_date");
String cl_league=request.getParameter("m_time");
String cl_est=request.getParameter("m_teams");
String cl_e=request.getParameter("m_stname");


int val = st.executeUpdate("insert into game values ('"+cl_name+"','"+cl_country+"','"+cl_location+"','"+cl_league+"','"+cl_est+"','"+cl_e+"')");

con.close();
out.println("successfully insert data into database!");
out.println("</br>");
out.println("<br/><a href=view_game.jsp><b>View Matches</b></a>");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>