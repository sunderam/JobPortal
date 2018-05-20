<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<h5>Education Details</h5><hr> 
<form action="processProfileData.jsp?action=educational" method="post"> 
<div class="row">
  <div class="col-sm-6">
    <div class="form-group">
      <label for="Education">SSC Percentage:</label>
      <input type="text" class="form-control"  placeholder="Enter the SSC Percentage" name="ssc">
    </div>
  </div>
   <div class="col-sm-6">
    <div class="form-group">
      <label for="Specific Course">SSC Passing Year:</label>
      <input type="text" class="form-control"  placeholder="Enter SSC Passing Year" name="sscyear">
    </div>
  </div>
</div>


<div class="row">
  <div class="col-sm-6">
    <div class="form-group">
      <label for="Education">HSC Percentage:</label>
      <input type="text" class="form-control"  placeholder="Enter HSC Percentage" name="hsc">
    </div>
  </div>
   <div class="col-sm-6">
    <div class="form-group">
      <label for="Specific Course">HSC Passing Year:</label>
      <input type="text" class="form-control"  placeholder="Enter HSC Passing Year" name="hscyear">
    </div>
  </div>
</div>

<div class="row">
  <div class="col-sm-6">
    <div class="form-group">
      <label for="Education">Degree Percentage:</label>
      <input type="text" class="form-control"  placeholder="Enter Degree Percentage" name="deg">
    </div>
  </div>
   <div class="col-sm-6">
    <div class="form-group">
      <label for="Specific Course">Degree Passing Year:</label>
      <input type="text" class="form-control"  placeholder="Enter Degree Passing Year" name="degyear">
    </div>
  </div>
</div>

 <div class="row">
   
  <div class="col-sm-6">
    <div class="form-group">
      <label for="Aggregate"> Degree Aggregate:</label>
      <input type="text" class="form-control"  placeholder="Enter Degree Aggregate" name="degagri">
    </div>
  </div>
     
     
     <div class="col-sm-6">
    <div class="form-group">
      <label for="Passing-Year">Institute Name :</label>
      <input type="text" class="form-control"  placeholder="Enter Institute(College) Name  " name="collname">
    </div>
  </div>
</div>

  <div class="row">
  <div class="col-sm-6">
    <div class="form-group">
      <label for="Education">Education(Branch):</label>
      <input type="text" class="form-control"  placeholder="Enter the Education etc.BE,BCA,MCA" name="edu">
    </div>
  </div>
   <div class="col-sm-6">
    <div class="form-group">
      <label for="Specific Course">Specific Course:</label>
      <input type="text" class="form-control"  placeholder="Enter Specific Course etc:Java,Andriod" name="course">
    </div>
  </div>
  
  <div class="col-md-6">
  	<button type="submit" class="btn btn-primary btn-block">Submit</button>
  </div>
</div>
</form>