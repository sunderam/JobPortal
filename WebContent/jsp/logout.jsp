<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page trimDirectiveWhitespaces="true" %>

    
    <%
    	
    	HttpSession userSession = request.getSession(false);
    	if(userSession != null){
    		userSession.invalidate();
    		String msg = "Successfully Loged Out !";
    		request.setAttribute("msg", "Successfully Loged Out !");
    		/* RequestDispatcher view = request.getRequestDispatcher("../index.html");
    		view.forward(request, response); */
    		response.sendRedirect("../index.html");
    	}
    
    %>