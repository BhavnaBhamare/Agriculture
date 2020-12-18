<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<div class="panel panel-widget agile-validation">
								<div class="validation-grids validation-grids-right login-form">
									<div class="widget-shadow login-form-shadow" data-example-id="basic-forms"> 
										<div class="input-info">
											<h3>Login form :</h3>
										</div>
										<div class="form-body form-body-info">
											<form data-toggle="validator" action="LoginServlet" method="post">
												<div class="form-group has-feedback">
												<label style="color: white;">Enter Email</label>
													<input type="email" class="form-control" name="email" placeholder="Enter Your Email" data-error="Bruh, that email address is invalid" required="">
													<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
												</div><br>
												<div class="form-group">
													<label style="color: white;">Enter Password</label>
													<input type="password" data-toggle="validator" data-minlength="6" class="form-control" id="inputPassword1" name="passsword" placeholder="Password" required="">
												</div>
												<div class="bottom">
													<div class="form-group">
														<div class="checkbox">
															<label>
																<input type="checkbox" id="terms1" data-error="Before you wreck yourself" required="">
																Remember me
															</label>
															<div class="help-block with-errors"></div>
														</div>
													</div>
													<div class="form-group">
													<button type="submit" >Login</button>
													</div>
													<div class="clearfix"> </div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<!-- footer -->
		
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
						required: 'Este campo é obrigatório',
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