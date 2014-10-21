<%@ page import ="java.sql.*" %>
<head>
<link href="web.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="divWrapper">

<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fifa",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from member where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
	out.println("welecome" +userid);
       	out.println("<a href='view_club.jsp'>View Club</a>");
        out.println("<a href='logout_coach.jsp'>Log out</a>");
        response.sendRedirect("success_coach.jsp");
    } else {
        out.println("Invalid  UserName or password <a href='index_login_coach.jsp'>try again</a>");
    }
%>
</div>
</body>