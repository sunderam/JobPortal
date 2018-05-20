<%@page import="pojo.Score"%>
<%@page import="pojo.Register"%>
<%@page import="dao.RegisterDao"%>
<%@page import="java.util.List"%>
<%@page import="pojo.JobPojo"%>
<%@page import="dao.JobDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/profile.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>


<div class="container">
  <div style="margin-top: 40px;">
    <div class="row">
      <div class="col-md-4">
        <div class="card" style="width: 18rem;">
          <div class="card-header">
            <h4>Filter<h4>
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">Newly Added</li>
            <li class="list-group-item">1 Days ago</li>
            <li class="list-group-item">a week ago</li>
          </ul>
        </div>
      </div>
      <div class="col-md-8">

        <div class="row" style="margin-bottom: 10px;">
          <div class="col-md-12 jobs">
            <h3>Recommended Jobs For You...</h3><hr>
            <form class="form-inline">
              <div class="form-group col-md-4">
                <input type="text" name="search" class="form-control" placeholder="Search Job">
              </div>
              <button type="submit" class="btn btn-primary">Search</button>  
            </form> 
              
          </div>
        </div>
        
        			<%

						JobDao dao = new JobDao();
						List<JobPojo> jobsList = dao.getAllJobs();
					
					%>

        
       			<%	
				for(int i =0;i < jobsList.size(); i++)
				{
				%>
				<div class="row jobs">
					<div class="col-md-12">
							<p><strong><%=jobsList.get(i).getCompanyName() %> | <span><%=jobsList.get(i).getLocation() %></span></strong></p>
							<p><%=jobsList.get(i).getSalary() %> L/PA</p>
							<p><%=jobsList.get(i).getSkillsNeed() %></p>
							<p>Experience Required : <%=jobsList.get(i).getExperianceReq() %></p>
							<p><%=jobsList.get(i).getDescription() %></p>
							<a href="jobDetails.jsp?jobId=<%=jobsList.get(i).getJobid()%>" class="btn btn-default">Apply</a>
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