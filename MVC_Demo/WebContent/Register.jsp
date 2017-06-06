<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file = "header.jsp" %>

<!-- %@ include file = "/WEB-INF/demo_file.css" % -- MISMATCH OUTPUT -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>

			<style type="text/css">
    			<%@include file="/WEB-INF/demo_file.css" %>
			</style>
 
 
</head>
<body>

	<!-- %@ include file = "/WEB-INF/demo_file.css" -- ERROR_MISMATCH OUTPUT -->

	<!-- jsp:include page = "demo_file.css" - Error -->
	
<div class="container">

    <form action="Login_Insert" class="well form-horizontal" method="post" >
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Registration Form</b></h2></center></legend><br>

<!-- Text input-->

<!--  CUSTOMER ID  -->

<div class="form-group">
  <label class="col-md-4 control-label">Customer Id.</label> <!--  label provides the displayed item name on the website such as first name , id etc..  -->  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <!-- span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -- Commented -->
  <input  name="CUSTOMER_ID" id = "customer_id " placeholder="Customer ID" class="form-control"  type="text">
    </div>
  </div>
</div>


<!--  CUSTOMER NAME -->

<div class="form-group">
  <label class="col-md-4 control-label">First Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <!-- span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -- Commented -->
  <input  name="CUSTOMER_NAME" id = "customer_name" placeholder="First Name" class="form-control"  type="text">
    </div>
  </div>
</div>

<!--  PASSWORD -->

<div class="form-group">
  <label class="col-md-4 control-label" >Password</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <!-- span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>-- Commented -->
  <input name="PASSWORD" id = "customer_password" placeholder="Password" class="form-control"  type="password">
    </div>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit"  >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
  </div>
</div>

</fieldset>
</form>
</div>
    </div><!-- /.container -->




</body>
</html>