<%-- 
    Document   : Login
    Created on : May 17, 2018, 11:12:35 AM
    Author     : Dnyaneshwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login </h1>
        
        
        <form action="Validate.jsp" method="POST">
            
	
	

	<div >
	
	<label><b>Email</b></label>&nbsp;&nbsp;
	<input type="text" name="u" value=""  placeholder="Enter Username" required=""><br><br>
	
	<label><b>Password</b></label>&nbsp;&nbsp;
	<input type="password" name="p"  value="" placeholder="Enter Password" required=""><br><br>
	
	<button type="submit">Login</button>
         <a href="Register.jsp">Register </a><br>
        <a href="ChangePassword.jsp">Forgot Password</a> 
       </div>
</form>
        
    </body>
</html>
