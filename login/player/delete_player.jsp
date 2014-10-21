<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<%
String p_id =request.getParameter("p_id");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
int in = st.executeUpdate("DELETE FROM player where p_id='"+p_id+"'");
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
