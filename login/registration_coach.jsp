<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fifa",
            "root", "root");
    Statement s = con.createStatement();
    ResultSet r;
	Statement st = con.createStatement();
    //ResultSet rs;
    r = s.executeQuery("select ch_id from coach where ch_id='"+user+"'");
    if (r.next()) {
    int i = st.executeUpdate("insert into member(first_name, last_name, email, uname, pass, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
    if (i > 0) {
        session.setAttribute("userid", user);
        //response.sendRedirect("welcome_coach.jsp");
        out.print("Registration Successfull!"+"<a href='index_login_coach.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index_login.jsp");
    }
}
else {
out.println("Coach ID not found");
}



%>