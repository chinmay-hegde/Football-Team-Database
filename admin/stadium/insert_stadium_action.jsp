

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
String ch_name=request.getParameter("st_name");
String ch_wage=request.getParameter("st_location");
String ch_country=request.getParameter("st_country");
String ch_exp=request.getParameter("st_strength");
String ch_rating=request.getParameter("t_price");
int val = st.executeUpdate("insert into stadium values ('"+ch_name+"','"+ch_wage+"','"+ch_exp+"','"+ch_rating+"','"+ch_country+"')");

con.close();
out.println("successfully insert data into database!");
out.println("</br>");
out.println("<br/><a href=view_stadium.jsp><b>View All Stadiums</b></a>");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>