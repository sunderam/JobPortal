<%-- 
    Document   : RegisterFinal
    Created on : May 17, 2018, 12:25:12 PM
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



	<%
            
            try{
            dao.RegisterDao rd=new dao.RegisterDao();
            pojo.Register rp=new pojo.Register();
            
            
            String uname=request.getParameter("uname");
            String email=request.getParameter("email");
            String contact=request.getParameter("contact");
            String degree=request.getParameter("degree");
            String passing=request.getParameter("year");
            String password=request.getParameter("pass");
            
            
            
           	rp.setName(uname);
           	rp.setEmail(email);
           	rp.setContact(contact);
           	rp.setDegree(degree);
           	rp.setPassing(passing);
           	rp.setPassword(password);
            
            boolean b=rd.addReg(rp);
            
            if(b){
            	session.setAttribute("uname", email);
            	RequestDispatcher view = request.getRequestDispatcher("Dashboard.jsp");
            	view.forward(request, response);
            }
            
            } catch (Exception e) {
                System.out.println("Exception is " + e);
            }


        %>


</body>
</html>
