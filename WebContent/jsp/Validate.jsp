<%-- 
    Document   : Validate
    Created on : May 17, 2018, 11:17:40 AM
    Author     : Dnyaneshwar
--%>

<%@page import="dao.LoginDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         
    </head>
    <body>
        
<%
	
	LoginDao ldb = new LoginDao();

   String uname=request.getParameter("username");
   String upass=request.getParameter("password");
   
   
   try
   {
    java.util.ArrayList al=ldb.isValidate(uname,upass);
    
  
    
    if(al.size()>0)
    {
         
        
       System.out.println("Creating Session");
    
      session.setAttribute("uname",al.get(2));
        
        System.out.println("seted session attribute is=="+al.get(2));
        
       
      RequestDispatcher r=request.getRequestDispatcher("Dashboard.jsp");
      r.forward(request,response);
   }
    else
   {
       
      System.out.println("forwording request to login.jsp");  
      out.print("<p style=\"color:red\">Sorry Your  Username or Password Incorrect</p>");
     
      RequestDispatcher r=request.getRequestDispatcher("InvalidLogin.jsp");
      r.forward(request,response);
     
   
   }      
 }
   catch(Exception e)
   {
     out.println("Error is"+e);
   }
%>
 </body>
</html>
