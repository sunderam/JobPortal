<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Job portal</title>
	 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

	<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" type="text/css" href="css/menu.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand" href="#"><h1><span style="color: orange;">Vibrant</span>Mind </h1></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav mx-auto">
      <li class="nav-item active">
        <a class="nav-link" href="../index.html">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Courses</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="JobView.jsp">Jobs</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Placements</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="download.jsp">Download</a>
      </li>
    </ul>
    <ul class="navbar-nav ml-auto right-nav ">
      <li class="nav-item">
      	<%
      		if(session.getAttribute("uname") == null)
      		{
    	%>
        <a class="nav-link btn btn-sm btn-outline-info" href="#">REGISTER <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link btn btn-sm btn-outline-info" href="#" data-toggle="modal" data-target="#exampleModal">LOGIN</a>
      </li>
      <%
      		}
      %>
      <%
      		if(session.getAttribute("uname") != null)
      		{
    	%>
    <li class="nav-item">
        <a class="nav-link btn btn-sm btn-outline-info" href="Dashboard.jsp">DASHBOARD <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link btn btn-sm btn-outline-info" href="logout.jsp">LOGOUT</a>
      </li>
      <%
      		}
      %>
    </ul>
  </div>
</nav>
</body>
</html>