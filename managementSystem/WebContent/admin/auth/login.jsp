<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login</title>
		<link rel="stylesheet"  type="text/css" href="<%= request.getContextPath()%>/templates/css/bootstrap.min.css">
		<link href="<%= request.getContextPath()%>/templates/css/styleLogin.css" type="text/css" rel="stylesheet" />
<link rel="shortcut icon" href="<%= request.getContextPath()%>/templates/images/logo.png" type="image/x-icon" />
	</head>
	<body>
		<div class="container">
			<div class="wrapper">
				<form action="<%= request.getContextPath()%>/login" method="post" name="Login_Form" id="add-post" class="form-signin">
				    <h3 class="form-signin-heading">Please Sign In</h3>
					  <hr class="colorgraph"><br>
					  
					  <input type="text" class="form-control" name="username" placeholder="Username"  autofocus="" required />
					  <input type="password" class="form-control" name="password" placeholder="Password" required />
					  <button class="btn btn-lg btn-primary btn-block"  name="submit" value="Login" type="Submit">Login</button>
				</form>
			</div>
		</div>
		<div class="myslides">
		<img alt=""
			src="<%= request.getContextPath()%>/templates/images/slide1.jpg"
			style="width: 100%">
		</div>
		<div class="myslides">
			<img alt=""
				src="<%= request.getContextPath()%>/templates/images/slide2.jpg"
				style="width: 100%">
		</div>
		<div class="myslides">
			<img alt=""
				src="<%= request.getContextPath()%>/templates/images/slide3.jpg"
				style="width: 100%">
		</div>
		<script type="text/javascript">
			var slideIndex = 0;
			showSlides();
			function showSlides() {
				var slides = document.getElementsByClassName("myslides");

				for (var i = 0; i < slides.length; i++) {
					slides[i].style.display = "none";
				}
				
				slideIndex++;
				if (slideIndex > slides.length) {
					slideIndex = 1;
				}
				
				slides[slideIndex - 1].style.display = "block";
				setTimeout(showSlides, 5000);
			}
			$(document).ready(function() {
				$("#add-post").validate({
					// ignore: [],
					// debug: false,
					rules: {
						username:"required",
						password:"required",
					},
					messages: {
						username:"Please enter username",
						password:"Please enter password",
					}
				});
			});
		</script>
	</body>
</html>
