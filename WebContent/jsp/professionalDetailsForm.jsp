<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<h5>Professional Details</h5><hr>
<form action="processProfileData.jsp?action=professional" method="post">
    <div class="row">
	   <div class="col-sm-4">
	    <div class="form-group">
	      <label for="Experience"> Professional Experience</label>
	      <input type="text" class="form-control"  placeholder="Enter  Professional Experience" name="experi">
	    </div>
	  </div>
	  <div class="col-sm-4">
	    <div class="form-group">
	      <label for="Resume">Job Title</label>
	      <input type="text" class="form-control"  placeholder="Enter  Job Title" name="job">
	    </div>
	  </div>	
	   <div class="col-sm-4">
	    <div class="form-group">
	      <label for="Photo">Current C.T.C</label>
	      <input type="text" class="form-control"  placeholder="Enter Current C.T.C" name="ctc">
	    </div>
	  </div>
	  <div class="col-md-6">
  	<button type="submit" class="btn btn-primary btn-block">Submit</button>
  </div>
  </div> 
  </form>