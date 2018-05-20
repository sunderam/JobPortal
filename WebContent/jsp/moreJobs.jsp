<%@page import="pojo.JobPojo"%>
<%@page import="java.util.List"%>
<%@page import="dao.JobDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Jobs</title>
</head>
<body>

<div class="container-fluid">
<jsp:include page="menu.jsp"></jsp:include>

<h4>>>> Job Search </h4><hr>

<div class="jobdeatils">
	<div class="row">
		<div class="col-md-3">
				<ul class="list-group">
				  <li class="list-group-item active">Filter Jobs</li>
				  <li class="list-group-item">.Net Developer</li>
				  <li class="list-group-item">Software Engineer</li>
				  <li class="list-group-item">Front End Developer</li>
				  <li class="list-group-item">Proggramer</li>
				</ul>				
		</div>
		<div class="col-md-9">
			<%

	JobDao dao = new JobDao();
	List<JobPojo> jobsList = dao.getAllJobs();

%>


<div class="search" style="padding-bottom:20px;">
<form action="" class="form-inline">
		<div class="form-group col-md-6">
			<label for="search">Search</label>
			<input type="text" class="form-control" name="search" placeholder="Search Job">
			<button type="submit" class="btn btn-primary">Search</button>
		</div>
</form>
</div><hr>
<%
for(int i =0;i < jobsList.size(); i++)
{
%>
<div class="row">
	<div class="col-md-8">
		<div style="background-color:gray;color:white;padding:20px;width:700px;">
			<p><strong><%=jobsList.get(i).getCompanyName() %> | <span><%=jobsList.get(i).getLocation() %></span></strong></p>
			<p><%=jobsList.get(i).getSalary() %> L/PA</p>
			<p><%=jobsList.get(i).getSkillsNeed() %></p>
			<p>Experience Required : <%=jobsList.get(i).getExperianceReq() %></p>
			<p><%=jobsList.get(i).getDescription() %></p>
			<a href="jobDetails.jsp?jobId=<%=jobsList.get(i).getJobid() %>" class="btn btn-default">Apply</a>
		</div>
	</div>
</div><hr>
<%
}
%>
			
		</div>
	</div>
</div>

</div>


</body>
</html>