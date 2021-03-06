<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<<html>
<%@page import="com.pojo.Registration" %>
<%@page import="com.model.BLManager" %>
<%@page import="java.util.List"%>

<head>
<title>Registration / Login form Flat Responsive Widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Registration / Login form Responsive Widget, Login forms,Flat Pricing tables,Flat Drop downs  Sign up Web forms, Login sign up Responsive web Forms," />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom CSS -->
<link href="css/stylereg.css" rel='stylesheet' type='text/css' />
<!-- font CSS --><!--
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href="//fonts.googleapis.com/css?family=Archivo+Black" rel="stylesheet">-->
<link href="//fonts.googleapis.com/css?family=Signika:300,400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">

<!--font CSS-->
<script src="js1/jquery2.0.3.min.js"></script>
</head>
<body class="dashboard-page">

<%

BLManager bl=new BLManager();
Registration r=new Registration();
String username=(String)session.getAttribute("username");
System.out.print("Before ID:"+username);
r=bl.searchfuname(username);
request.setAttribute("r", r);
int rid=(Integer)session.getAttribute("id");
session.getAttribute("userneme");
String email=(String)session.getAttribute("email");
String password=(String)session.getAttribute("passsword");
String confirmpassword=(String)session.getAttribute("confirmpassword");
String gender=(String)session.getAttribute("gender");
String registeras=(String)session.getAttribute("registeras");
String address=(String)session.getAttribute("address");
String phonenumber=(String)session.getAttribute("phonenumber");
String mobilenumber=(String)session.getAttribute("mobilenumber");

%>


<form data-toggle="validator" action="UpdateFarmerProfile" method="post">

		<div class="main-grid">
			<div class="agile-grids">	
				<!-- validation -->
				<div class="grids">
					<div class="progressbar-heading grids-heading">
						<h2>registration / login form</h2>
					</div>
					
					<div class="forms-grids">
						<div class="forms3">
						<div class="w3agile-validation w3ls-validation">
							<div class="panel panel-widget agile-validation register-form">
								<div class="validation-grids widget-shadow" data-example-id="basic-forms"> 
									<div class="input-info">
										<h3>Register Form :</h3>
									</div>
									
								<input type="hidden" name="id" value="${id }">
									
									<div class="form-body form-body-info">
											<div class="form-group valid-form">
											<label style="color: white;">User Name</label>
												<input type="text" class="form-control" id="inputName" name="Username" value="${username}" placeholder="Username" required="">
											</div><br>
											<div class="form-group has-feedback">
											<label style="color: white;">Email</label>
												<input type="email" class="form-control" name="Email" placeholder="Email" value="${r.email}" data-error="That email address is invalid" required="">
												<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
												<span class="help-block with-errors">Please enter a valid email address</span>
											</div><br>
											<div class="form-group">
											<label style="color: white;">Password</label>
											  <input type="password" data-toggle="validator" data-minlength="6" class="form-control" id="inputPassword" name="Password" value="${r.password}" placeholder="Password" required="">
											  <span class="help-block">Minimum of 6 characters</span>
											</div><br>
											<div class="form-group">
											<label style="color: white;">Confirm Password</label>
											  <input type="password" class="form-control" value="${r.confirmpassword}" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" name="Confirmpassword" value="${r.fname}" placeholder="Confirm password" required="">
											  <div class="help-block with-errors"></div>
											</div><br>
											<div class="form-group">
											<label style="color: white;">Gender</label>
												<div class="radio">
													<label style="color: white;">
													  <input type="radio" name="gender" required="" value="${r.gender}" >
													  Female
													</label>
												</div>
												<div class="radio">
													<label style="color: white;">
													<input type="radio" name="gender" required="" value="${r.gender}">
													Male
													</label>
												</div>
											</div><br>
											
											<div class="form-group">
											<label style="color: white;">Register As</label>
											<select name="registeras" value="${r.registeras}">
 												<option value="Admin">Admin</option>
  												<option value="Supplier">Supplier</option>
 											    <option value="Farmer">Farmer</option>
										</select>
											 
											</div><br>
											<div class="form-group">
											<label style="color: white;">Address</label>
											  <textarea value="Address" name="address"  value="${r.address}" class="form-control" id="addrsess" data-match="#inputPassword" data-match-error="Whoops, these don't match"  placeholder="Enter Address" required=""></textarea>
											  <div class="help-block with-errors"></div>
											</div><br>
											<div class="form-group">
											<label style="color: white;">Phone Number</label>
											  <input type="text" name="phonenumber" value="${r.phonenumber}" class="form-control" id="phonenumber" data-match="#inputPassword" data-match-error="Whoops, these don't match"  placeholder="Enter Phone Number" required=""></textarea>
											  <div class="help-block with-errors"></div>
											</div><br>
											<div class="form-group">
											<label style="color: white;">Mobile Number</label>
											  <input type="text" name="mobilenumber"  value="${r.mobilenumber}" class="form-control" id="mobilenumber" data-match="#inputPassword" data-match-error="Whoops, these don't match"  placeholder="Enter Mobile Number" required=""></textarea>
											  <div class="help-block with-errors"></div>
											</div><br>
											<div class="form-group">
												<div class="checkbox">
													<label style="color: white;">
														<input type="checkbox" id="terms" data-error="Before you wreck yourself" required="">
														I have read and accept terms of use.
													</label>
													<div class="help-block with-errors"></div>
												</div><br>
											</div>
											<div class="form-group">
												<button type="submit">Submit</button>
											</div>
									</div>
								</div>
							</div>
							</form>
							
							<!-- footer -->
		<div class="footer">
			<p>� 2016 Registration / Login form . All Rights Reserved . Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a></p>
		</div>
		<!-- //footer -->
		<!-- input-forms -->
		
		
		<script type="text/javascript" src="js/valida.2.1.6.min.js"></script>
		<script type="text/javascript" >

			$(document).ready(function() {

				// show Valida's version.
				$('#version').valida( 'version' );

				// Exemple 1
				$('.valida').valida();

				// Exemple 2
				/*
				$('.valida').valida({

					// basic settings
					validate: 'novalidate',
					autocomplete: 'off',
					tag: 'p',

					// default messages
					messages: {
						submit: 'Wait ...',
						required: 'Este campo � obrigat�rio',
						invalid: 'Field with invalid data',
						textarea_help: 'Digitados <span class="at-counter">{0}</span> de {1}'
					},

					// filters & callbacks
					use_filter: true,

					// a callback function that will be called right before valida runs.
					// it must return a boolan value (true for good results and false for errors)
					before_validate: null,

					// a callback function that will be called right after valida runs.
					// it must return a boolan value (true for good results and false for errors)
					after_validate: null

				});
				*/

        // setup the partial validation
				$('#partial-1').on('click', function( ev ) {
					ev.preventDefault();
					$('#res-1').click(); // clear form error msgs
					$('form').valida('partial', '#field-1'); // validate only field-1
					$('form').valida('partial', '#field-1-3'); // validate only field-1-3
				});

			});

		</script>
		<!-- //input-forms -->
		<!--validator js-->
		<script src="js/validator.min.js"></script>
		<!--//validator js-->
		
		
</body>
</html>
							

	
							