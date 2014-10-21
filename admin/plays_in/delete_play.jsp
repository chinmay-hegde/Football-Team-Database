<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<%
String o_stname =request.getParameter("o_stname");
String o_clname =request.getParameter("o_clname");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
int in = st.executeUpdate("DELETE FROM owns where o_clname='"+o_clname+"' and o_stname='"+o_stname+"'");
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
