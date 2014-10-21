

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
String ch_name=request.getParameter("p_pid");
String ch_wage=request.getParameter("p_matno");
int val = st.executeUpdate("insert into plays_in values ('"+ch_name+"','"+ch_wage+"')");

con.close();
out.println("successfully insert data into database!");
out.println("</br>");
out.println("<br/><a href=view_play_choice.jsp><b>View All Players In specific match</b></a>");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>