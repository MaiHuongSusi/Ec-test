<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login</title>
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath()%>templates/images/login_icon.png" />
    	<link rel="stylesheet" href="<%= request.getContextPath()%>templates/css/styleLogin1.css"> 
		<link rel="stylesheet"  type="text/css" href="<%= request.getContextPath()%>/templates/css/bootstrap.min.css">
		<link rel="shortcut icon" href="<%= request.getContextPath()%>/templates/images/logo.png" type="image/x-icon" />
	</head>
	<body id="loginPage">
    <div class="wrapper" id="home">
        <div class="container">
            <div class="logoSite">
                <img src="<%= request.getContextPath()%>templates/images/enclave_logo.png" class="logo" height="120px" width="370px" >
            </div>
            <div class="formSite">
                <div>
                    <form class="formLogin form-group">
                        <div class="divForm">
                             <label id="nameForm" class="nameForm">MANAGEMENT SYSTEM</label>
                        </div>
                        <div class="divUsername">
                            <label id="label1" class="label">Username:</label>
                            <input type="text" name="username" class="inputUsername">
                        </div>
                        <div class="divPassword">
                            <label id="label2" class="label">Password:</label>
                            <input type="password" name="password" class="inputPassword">
                        </div>
                        <div class="button">
                            <input type="submit" class="btnLogIn" value="LOG IN">
                        </div>
                        <div class="divForgot">
                            <a href="#" class="forgotPass"><u>Forgot Password?</u></a>
                        </div>
                    </form>	
                </div>
	       </div>   
        </div>
    </div>
</body>
</html>
