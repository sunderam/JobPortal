<%@page import="pojo.JobPojo"%>
<%@page import="dao.JobDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/profile.css">

<title>Job Details</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<div class="container-fluid">

	<h4> >>> Job Details</h4>
		<%
			if(request.getAttribute("err") != null)
			{
		%>
		
		<span style="color:red;"><%=request.getAttribute("err") %></span>
		
		<%
			}
		%>
		<span><%=request.getAttribute("msg") %></span>
		<hr>
	
		<%
			int jobid = Integer.parseInt(request.getParameter("jobId"));
			JobDao dao = new JobDao();
			JobPojo job = dao.getJobById(jobid);
		%>
	
	<div class="jobs"">
		<h4>Java Developer</h4>
		<p><%=job.getCompanyName() %></p>
		<p><strong>Location : <%=job.getLocation() %> | <%=job.getSalary() %> </strong></p>
		<p><strong>Skills Require :</strong> <%=job.getSkillsNeed() %></p>
		<p><strong>Job Description :</strong></p> 
		<p><%=job.getDescription() %></p>
		 <p><strong>About Company</strong></p>
		 <p>About Robert Bosch Engineering and Business Solutions in India -
		Robert Bosch Engineering and Business Solutions Private Limited is a 100% owned subsidiary of Robert Bosch 
		GmbH, one of the world's leading global supplier of technology and services, offering end-to-end Engineering,
		 IT and Business Solutions. With over 19,000 associates, it's the largest software development center of Bosch,
		  outside Germany, indicating that it is the Technology Powerhouse of Bosch in India with a global footprint and 
		  presence in US, Europe and the Asia Pacific region. </p><hr>
		  <a href="checkEligibility.jsp?jobId=<%=job.getJobid() %>" class="btn btn-primary btn-lg">  Apply  </a>
	</div>

</div>

</body>
</html>