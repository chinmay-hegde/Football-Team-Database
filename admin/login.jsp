

<%@ page import ="java.sql.*" %>
<html>
<head>
<link href="web.css" rel="stylesheet" type="text/css" />
</head>
<body>

<a href="http://localhost:8017/f1/front/index.jsp"><h3>Home</h3></a>
<div id="divWrapper">

<%

    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fifa","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from member where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
	out.println("welecome" +userid);
       	out.println("<a href='view_club.jsp'>View Club</a>");
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid username or password <a href='index_login.jsp'>try again</a>");

    }
%>
</div>
</body>
</html>