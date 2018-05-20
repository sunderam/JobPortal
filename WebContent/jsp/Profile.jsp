<%-- 
    Document   : Profile
    Created on : May 17, 2018, 2:06:26 PM
    Author     : Dnyaneshwar
--%>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/profile.css">
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<div class="container">
  <div class="row">
    <div class="col-md-12 sub-menu">
      <ul>
        <li>Profile</li>
        <li><a href="#">My Score</a></li>
        <li><a href="JobView.jsp">My Jobs</a></li>
        <li>Cources</li>
        <li>Notification</li>
      </ul>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4">
      <div class="card">
        <div class="card-header bg-info">
          <strong>Profile Details</strong>
        
        </div>
        <div class="card-body">
          <img src="img/profile.png" alt="..." class="img-thumbnail" height="200px" width="200px">
          <p>Name : Sundar Bhalerao</p>
          <p>Email ID : sundarbhalerao@gmail.com</p>
          <p>Qualification : MCA-2015</p>
          <p>Location : Pune</p>
        </div>
      </div>
    </div>
    <div class="col-md-8">
      <div class="card">
        <div class="card-header bg-light">
          <h1>My Profile</h1>
            <%
          	if(request.getAttribute("msg") != null){		
          %>
          <small class="bg-success" style="padding:10px;color:#fff;"><%=request.getAttribute("msg") %></small>
          <%
          	}
          %>
          <%
          	if(request.getAttribute("err") != null){		
          %>
          <small class="bg-danger" style="padding:10px;color:#fff;"><%=request.getAttribute("err") %></small>
          <%
          	}
          %>
        </div>
        <div class="card-body">
          <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
              <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Personal Details</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Educational Details</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Professional Details</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="upload-tab" data-toggle="tab" href="#upload" role="tab" aria-controls="upload" aria-selected="false">Upload Resume</a>
            </li>
          </ul>
          <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            	<jsp:include page="personalDetailsForm.jsp"></jsp:include>
            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            	<jsp:include page="educationalDetailsForm.jsp"></jsp:include>
            </div>
            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
            	<jsp:include page="professionalDetailsForm.jsp"></jsp:include>
            </div>
            <div class="tab-pane fade" id="upload" role="tabpanel" aria-labelledby="upload-tab">
            	<div class="row">
            		<div class="col-sm-6">
					    <div class="form-group">
					      <label for="Resume">Resume</label>
					      <input type="file" class="form-control"  placeholder="Upload Your Resume" name="resume">
					    </div>
					  </div>
            	</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>























<div class="container">
 </div>
</body>
</html>
