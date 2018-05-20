<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Admin-Add Job</title>
</head>
<body>

<div class="container">
	<h1>Add New Job</h1><hr>
	<form action="ProcessAddJob.jsp" method="post">
	  <div class="form-group">
	    <label for="companyName">Company Name</label>
	    <input type="text" class="form-control" id="companyName" name="companyName" placeholder="Company Name">
	  </div>
	  <div class="form-group">
	    <label for="location">Location</label>
	    <input type="text" class="form-control" id="location" name="location" placeholder="Job Location">
	  </div>
	  <div class="form-group">
	    <label for="post">Designation</label>
	    <input type="text" class="form-control" id="post" name="post" placeholder="Designation">
	  </div>
	  <div class="form-group">
	    <label for="package">Package Offer</label>
	    <input type="text" class="form-control" id="package" name="package" placeholder="Package">
	  </div>
	  <div class="form-group">
	    <label for="skill">Skills Require</label>
	    <input type="text" class="form-control" id="skill" name="skill" placeholder="Skills Require">
	  </div>
	  <div class="form-group">
	    <label for="exp">Experience Require</label>
	    <input type="text" class="form-control" id="exp" name="exp" placeholder="Skills Require">
	  </div>
	  <div class="form-group">
	    <label for="jobDescription">Job Description</label>
	    <textarea class="form-control" id="jobDescription" name="jobDescription" rows="3"></textarea>
	  </div>
	  <button type="submit" class="btn btn-primary">Add Job</button>
	</form>
</div>
</body>
</html>