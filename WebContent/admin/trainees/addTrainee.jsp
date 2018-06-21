
<%@page import="model.bean.User"%>
<%@page import="model.bean.Roles"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/inc/dashboard.jsp" %>
<style>
	#add-post .required:after {
	  content:"*";color:red;
	}
</style>

<%
	User trainee = new User(0, "", "", "", null, "", null, 0, 0, "", "", "", "");
	if( request.getAttribute("trainee") != null){
		trainee = (User) request.getAttribute("trainee");
	}

%>

<div class="content-wrapper py-3">
  <div class="container-fluid">
        <div class="card mb-3">
             <div class="alert alert-success">
			    <strong>Add New Trainee's Account</strong>
			  </div>
			  
			  <div>
			  	<%
				if(request.getAttribute("error") != null){
				%>
				<div class="alert alert-danger">
				  <strong>Error!</strong><%= request.getAttribute("error")%>
				</div>
				<%
				}
			  	%>
			  </div>
  
             <form id="add-post" action="<%= request.getContextPath()%>/trainee/add" method="POST" enctype="multipart/form-data" >
              	<div style="height: 5%"></div>
              
              <div class="col-sm-6" style="float: left">
              	<div class="form-group">
	              	<label class="required" >User Name</label>
	              	<input class="form-control" id="txtname" type="text" name="username" value="<%= trainee.getUsername()%>" placeholder="Username" required/>
              	</div>
              	
              	<div class="form-group">
	              	<label class="required" >Password</label>
	              	<input class="form-control" id="txtname" type="password" name="password" value="" placeholder="Password" required/>
              	</div>
              	
              	<div class="form-group">
	              	<label class="required" >Fullname</label>
	              	<input class="form-control" id="txtname" type="text" name="fullname" value="<%= trainee.getFullname()%>" placeholder="Fullname" required/>
              	</div>
              	
              	<img alt="" src="<%= request.getContextPath()%>/files/1529553626798.jpg">
              	
              	<div class="form-group">
	              	  <label class="required" >Gender</label> <br>
					  <input type="radio" name="gender" value="0" > Male <br>
					  <input type="radio" name="gender" value="1" >  Female <br>
					  <input type="radio" name="gender" value="2" > Other
              	</div>
              	
              	<div class="form-group">
	              	<label class="required" >Address</label>
	              	<input class="form-control" id="txtname" type="text" name="address" value="<%= trainee.getAddress()%>" placeholder="Address" required/>
              	</div>
              	
              </div>
              
              <div class="col-sm-6" style="float: right">
              	
              	
              	<div class="form-group">
	              	<label class="required" >Phone</label>
	              	<input class="form-control" id="txtname" type="text" name="phone" value="<%= trainee.getPhone()%>" placeholder="Phone" required/>
              	</div>
              	
              	<div class="form-group">
	              	<label class="required" >Birthday</label>
	              	<input class="form-control" id="txtname" type="date" name="dateOfBirth" value="<%=  trainee.getDateOfBirth()%>" placeholder="Birthday" required/>
              	</div>
              	
              	<div class="form-group">
	              	<label class="required" >Email</label>
	              	<input class="form-control" id="txtname" type="text" name="email" value="<%= trainee.getEmail()%>" placeholder="Email" required/>
              	</div>
              	
              	<div class="form-group">
	              	<label class="required" >Avatar <em style="color: red">(jpg, png, gif)</em> </label>
	              	<input class="form-control" id="txtname" type="file" name="avatar" value="" onchange="readURL(this);" required/>
    				<img id="blah" src="#" alt="your image" />
    				<script type="text/javascript">
    				function readURL(input) {
    			        if (input.files && input.files[0]) {
    			            var reader = new FileReader();

    			            reader.onload = function (e) {
    			                $('#blah')
    			                    .attr('src', e.target.result)
    			                    .width(200);
    			            };

    			            reader.readAsDataURL(input.files[0]);
    			        }
    			    }
    				</script> 
              	</div>
      			
              </div> 
              
              <div style="clear: both"></div>
              <div class="error" ></div>
               
              <div>
	               <div class="col-sm-4" style="float: left"></div>
	               
	             	<div class="col-sm-4" style="float: left">
	             		<div class="col-sm-2" style="float: left"><input class="btn btn-primary" type="submit" name="submit" value="Add" /></div>
	             		<div class="col-sm-2" style="float: left"><input class="btn btn-primary" type="reset" name="reset" value="Reset" /></div>
	             		<div style="clear: both"></div>	
	             	</div> 
	             	
	               <div class="col-sm-4" style="float: right"></div>
	               <div style="clear: both"></div>
              </div>
              
              <div style="margin-bottom: 5%"></div>
              </form> 

            <script type="text/javascript">
      				$(document).ready(function() {
      					$("#add-post").validate({
      						rules: {
      							username:"required",
                                password:"required",
                                fullname:"required",
                                address:"required",
                                phone:"required",
                                dateOfBirth:"required",
                                email:"required"
                               
      						},
      						messages: {
      							username:"this feild is required",
                                password:"this feild is required",
                                fullname:"this feild is required",
                                address:"this feild is required",
                                phone:"this feild is required",
                                dateOfBirth:"this feild is required",
                                email:"this feild is required"
      						}
      					});
      				});
      				
      				
                    
      			</script>
          </div>
        </div>
      </div>
<%@include file="/templates/inc/footer.jsp" %> 
