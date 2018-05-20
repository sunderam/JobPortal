<%@page import="dao.JobDao"%>
<%@page import="pojo.JobPojo"%>
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

	JobPojo job = new JobPojo();
	job.setCompanyName(request.getParameter("companyName"));
	job.setLocation(request.getParameter("location"));
	job.setPost(request.getParameter("post"));
	job.setSalary(request.getParameter("package"));
	job.setSkillsNeed(request.getParameter("skill"));
	job.setExperianceReq(request.getParameter("exp"));
	job.setDescription(request.getParameter("jobDescription"));
	
	JobDao dao = new JobDao();
	boolean status = dao.addJobs(job);
	
	if(status){
		request.setAttribute("msg", "Job Added");
		RequestDispatcher view = request.getRequestDispatcher("AddJobs.jsp");
		view.forward(request, response);
	}
	else{
		request.setAttribute("err", "Problem while adding job");
		RequestDispatcher view = request.getRequestDispatcher("AddJobs.jsp");
		view.forward(request, response);
	}

%>
</body>
</html>