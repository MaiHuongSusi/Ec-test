<%@page import="model.bean.Roles"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/templates/inc/dashboard.jsp" %>

<style>
	#add-post .required:after {
	content:"*";color:red;
	}
</style>

<div class="content-wrapper py-3">
  <div class="container-fluid">
        <div class="card mb-3">
       		<div class="alert alert-success">
				<strong>Account Information</strong>
			</div>
			  
		  	<div class="divAvt">
                <div class="co1" >
                   <img src="<%=request.getContextPath()%>/templates/images/avatar.png" alt="avatar" class="imgAvt"/>
                </div>
            	<div class="co2">
                	<label class="username">Username</label>
            	</div>
            	<div class="co3"></div>
		  	</div>
  
            <form id="" action="" method="GET" >
           		<div style="height: 10%"></div>
            	<div class="col-sm-6" style="float: left">
	              	<div class="form-group">
		            	<label class="" >Fullname</label>
		            	<input class="form-control" id="txtname" type="text" name="fullname" value="" placeholder="Fullname"  disabled="disabled" />
	              	</div>
	              	<div class="form-group">
		              	<label class="" >Gender</label>
		              	<input class="form-control" id="txtgender" type="text" name="gender" value="" placeholder="Gender"  disabled="disabled"/>
	              	</div>
	              	<div class="form-group">
		              	<label class="" >Role</label>
		              	<input class="form-control" id="txtrole" type="text" name="role" value="" placeholder="Role"  disabled="disabled"/>
	              	</div>
	              	<div class="form-group">
		              	<label class="" >Address</label>
		              	<input class="form-control" id="txtaddress" type="text" name="address" value="" placeholder="Address"  disabled="disabled"/>
	              	</div>
          	  	</div>
              
              	<div class="col-sm-6" style="float: right">
	              	<div class="form-group">
		              	<label class="" >Phone</label>
		              	<input class="form-control" id="txtphone" type="text" name="phone" value="" placeholder="Phone"  disabled="disabled"/>
	              	</div>              	
	              	<div class="form-group">
		              	<label class="" >Birthday</label>
		              	<input class="form-control" id="txtbirthday" type="text" name="dateOfBirth" value="" placeholder="Birthday"  disabled="disabled"/>
	              	</div>
	              	<div class="form-group">
		              	<label class="" >Email</label>
		              	<input class="form-control" id="txtemail" type="text" name="email" value="" placeholder="Email"  disabled="disabled"/>
	              	</div>	                  
	                <div class="form-group">
		              	<label class="" >Skills:</label>
		              	<input class="form-control" id="txtskills" type="text" name="skills" value="" placeholder="Skills"  disabled="disabled"/>
	              	</div>             	  
              	</div>
   			</form>
   		</div> 
     
              
        <div style="clear: both"></div>
        <div class="error" ></div>
        <div style="margin-bottom: 10%"></div>
	</div>
</div>
<%@include file="/templates/inc/footer.jsp" %> 
