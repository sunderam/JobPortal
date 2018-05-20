<%-- 
    Document   : Register
    Created on : May 17, 2018, 1:28:08 AM
    Author     : Dnyaneshwar
--%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Registration Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="css/style.css" rel="stylesheet" type="text/css"/>
  
</head>
<body>

<div class="container">
    <form action="RegisterFinal.jsp" method="post">
        <div class="panel panel-default">
      <div class="panel-heading"><b><h4>Registration</h4></b></div>
      <div class="panel-body">
        <!--start-->
        <div class="row">
            <div class="col-lg-12 col-sm-12 col-sx-12">
    <div class="form-group">
      <label for="id">Name:</label>
      <input type="text" class="form-control"  name="uname" placeholder="Enter Username">
    </div>
  </div>

<!-- half row ended-->
    <div class="col-lg-12 col-sm-12 col-sx-12">
    <div class="form-group">
      <label for="email">E-mail:</label>
      <input type="text" class="form-control"  placeholder="Enter email" name="email">
    </div>
  </div>
  <div class="col-lg-12 col-sm-12 col-sx-12">
    <div class="form-group">
      <label for="Conatct">Contact:</label>
      <input type="text" class="form-control"  placeholder="Enter Contact" name="contact">
    </div>
  </div>
  <div class="col-lg-12 col-sm-12 col-sx-12">
    <div class="form-group">
      <label for="Degree">Degree:</label>
      <input type="text" class="form-control"  placeholder="Enter Degree" name="degree">
    </div>
  </div>
   <div class="col-lg-12 col-sm-12 col-sx-12">
    <div class="form-group">
      <label for="Passing-Year">Passing Year:</label>
      <input type="text" class="form-control"  placeholder="Enter Passing Year" name="year">
    </div>
  </div>
  <div class="col-lg-12 col-sm-12 col-sx-12">
    <div class="form-group">
      <label for="Password">Password:</label>
      <input type="Password" class="form-control"  placeholder="Enter Password" name="pass">
    </div>
  </div>
</div>


  <!--end-->
  

<!-- third row-->
<div class="row">   
  <div class="col-lg-12 col-sm-12 col-sx-12">
    <div class="form-group">
    <button type="submit" class="btn btn-primary" style="margin-left: 154px;"">Submit</button>
     </div>
   </div>
 </div>




<!--end tag-->
</div>
</div>
</form>
</div>
</body>
</html>
