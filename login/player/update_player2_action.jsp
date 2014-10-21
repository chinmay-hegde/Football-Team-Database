<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<%
String p_id=request.getParameter("p_id");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String p_name=request.getParameter("p_name");
String p_jno=request.getParameter("p_jno");
String p_wage=request.getParameter("p_wage");
String p_pos=request.getParameter("p_pos");
String p_care=request.getParameter("p_care");
String p_rating=request.getParameter("p_rating");
String p_age=request.getParameter("p_age");
String p_club=request.getParameter("p_club");
String p_cid=request.getParameter("p_cid");


int in = st.executeUpdate("UPDATE player SET p_name ='"+p_name+"',p_pos ='"+p_pos+"', p_care ='"+p_care+"',p_club='"+p_club+"',p_cid='"+p_cid+"',p_wage='"+p_wage+"',p_age='"+p_age+"',p_rating='"+p_rating+"',p_jno='"+p_jno+"' where p_id ='"+p_id+"'");
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