<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
		<link href="web.css" rel="stylesheet" type="text/css" />
    </head>
    <body>


	<div id="divWrapper">
	<a href="http://localhost:8017/f1/front/index.jsp"><h3>Home</h3></a>	

        <form method="post" action="login.jsp">
            <center>
			<div id="divContent">
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User ID</td>
                        <td><input type="text" name="uname" required value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" required value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        
                    </tr>
                </tbody>
            </table>
            </center>
			</div>
        </form>
		</div>
    </body>
</html>
