<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
   
<form action="processProfileData.jsp?action=personal" method="post"> 
<div class="row">
  <div class="col-lg-12 col-sm-12 col-sx-12">
    <div class="form-group">
    <label for="id">Full Name:</label>
           <input type="text" class="form-control"  name="fname" placeholder="Enter Your Full Name">
    </div>
  </div>
  </div>

<!--row ended-->
<!--second row start-->
     <div class="row">
    <div class="col-sm-6">
    <div class="form-group">
      <label for="date">Date of Birth:</label>
       <input type="date" class="form-control"  placeholder="Enter date of birth" name="dob">
    </div>
  </div>
  <!--half row ended-->
   
  <div class="col-sm-6">
  <label for="gender">Gender</label>
    <select name="gender" class="form-control">
    <option>Male</option>
    <option>Female</option>
    </select>
  </div>
  </div>
 
  <div class="row">
  <div class="col-sm-6">
    <div class="form-group">
      <label for="Address">Address:</label>
      <Textarea class="form-control" rows="4" placeholder="Enter the Address" name="add"></textarea>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="form-group">
      <label for="City">Current City:</label>
      <input type="text" class="form-control"  placeholder="Enter the current city" name="city">
    </div>
  </div>
  <div class="col-md-6">
  	<button type="submit" class="btn btn-primary btn-block">Submit</button>
  </div>
  
  </div>
  </form> 