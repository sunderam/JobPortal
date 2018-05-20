<%-- 
    Document   : Dashboard
    Created on : May 17, 2018, 11:21:05 AM
    Author     : Dnyaneshwar
--%>
<!DOCTYPE html>
<%@page import="pojo.JobPojo"%>
<%@page import="java.util.List"%>
<%@page import="dao.JobDao"%>
<%@page import="pojo.Register"%>
<%@page import="dao.RegisterDao"%>
<html>
<head>
<title>Job portal</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<%
	String username = session.getAttribute("uname").toString();
	RegisterDao dao = new RegisterDao();
	Register user = dao.getUserByUsername(username);
%>
<jsp:include page="menu.jsp"></jsp:include>
<div class="container-fluid">
  <div class="row">
    <div class="col-md-2 sidebar">
      <ul>
        <li>Logged in as <%=session.getAttribute("uname").toString() %></li>
        <li><a href="Profile.jsp">Profile</a></li>
        <li><a href="JobView.jsp">My Jobs</a></li>
        <li>My Score</li>
        <li>Test</li>
        <li>Settings</li>
        <li>Logout</li>
      </ul>
    </div>
    <div class="col-md-9 main-content">
      <div class="row">
        <div class="col-md-4 profile">
          <img src="img/profile.png" alt="..." class="img-thumbnail" height="200px" width="200px">
          <p><strong>Name :</strong> <%=user.getName()%></p>
          <p><strong>Email ID :</strong><%=user.getEmail()%></p>
		  <p><strong>Contact :</strong> <%=user.getContact()%></p>
		  <p><strong>Qualification :</strong> <%=user.getDegree()%></p>
		  <p><strong>Year Of Passing :</strong><%=user.getPassing() %></p>
        </div>
        <div class="col-md-8">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <h5 class="card-header">My Score</h5>
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Take a Test</a>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="card">
                <h5 class="card-header"></h5>
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div><hr>
      <h4>Recomended Jobs For You...</h4><hr>
      <%

			JobDao dao1 = new JobDao();
			List<JobPojo> jobsList = dao1.getJobs();
		
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
	<div class="row">
		<div class="col-md-12" style="text-align:right;">
			<p><a href="JobView.jsp">View more jobs...</a></p></div>
		</div>
	</div>
      
    </div>
  </div>
</body>
</html>