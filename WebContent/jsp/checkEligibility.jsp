<%@page import="pojo.Eligibility"%>
<%@page import="dao.JobDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	HttpSession userSession = request.getSession(false);
	String user = userSession.getAttribute("uname").toString();
	
	JobDao jobDao = new JobDao();
	Eligibility eligible = jobDao.isEligible(user);
	
	if(eligible.isTest()== false){
		RequestDispatcher view = request.getRequestDispatcher("test.jsp");
		view.forward(request, response);
	}
	else if(eligible.isFeespaid() == false){
		RequestDispatcher view = request.getRequestDispatcher("payment.jsp");
		view.forward(request, response);
	}
	else if(eligible.isAccountExpire() == true){
		request.setAttribute("err", "Account Exprire Can't Apply to this Job");
		RequestDispatcher view = request.getRequestDispatcher("jobDetails.jsp");
		view.forward(request, response);
	}
	else{
		
		int jobId = Integer.parseInt(request.getParameter("jobId"));
		boolean status = jobDao.applyJob(jobId, user);
		if(status){
				request.setAttribute("msg", "Succesfully Apply for Job");
		}else{
			request.setAttribute("err", "Problem applying job");
		}
		RequestDispatcher view = request.getRequestDispatcher("jobDetails.jsp");
		view.forward(request, response);
		
	}
%>
</body>
</html>