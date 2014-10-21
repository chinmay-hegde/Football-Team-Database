<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String ch_name=request.getParameter("st_name");
String ch_wage=request.getParameter("st_location");
String ch_country=request.getParameter("st_country");
String ch_exp=request.getParameter("st_strength");
String ch_rating=request.getParameter("t_price");


int in = st.executeUpdate("UPDATE stadium SET st_name ='"+ch_name+"',st_location='"+ch_wage+"', st_country ='"+ch_country+"',t_price='"+ch_rating+"',st_strength='"+ch_exp+"' where st_name ='"+ch_name+"'");
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