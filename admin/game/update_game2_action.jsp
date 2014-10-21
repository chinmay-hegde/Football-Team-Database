<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<%
String club_name =request.getParameter("match_no");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String cl_country=request.getParameter("m_league");
String cl_location=request.getParameter("m_date");
String cl_league=request.getParameter("m_time");
String cl_est=request.getParameter("m_teams");
String cl_e=request.getParameter("m_stname");


int in = st.executeUpdate("UPDATE game SET match_no ='"+club_name+"', m_league ='"+cl_country+"',m_date='"+cl_location+"',m_time='"+cl_league+"',m_teams='"+cl_est+"',m_stname='"+cl_e+"' where match_no ='"+club_name+"'");
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