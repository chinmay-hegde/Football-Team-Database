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
int in = st.executeUpdate("DELETE FROM club where club_name='"+club_name+"'");
con.close();
out.println("successfully deleted");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>
