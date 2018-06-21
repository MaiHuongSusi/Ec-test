
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/inc/dashboard.jsp" %>
<div class="content-wrapper py-3">
  <div class="container-fluid">
        <div class="card mb-3">
          <div class="card-header">
            <i class="fa fa-fw fa-code"></i>
            them lop
          </div>
              <form id="add-post" action="" method="POST" >
              	<div class="form-group">
	              	<label>Name</label>
	              	<input class="form-control" id="txtname" type="text" name="name" value="" placeholder="Name of class"/>
              	</div>
              	<div class="form-group">
              		<label>Course</label><br>
          			<select >
          				<option value="1">1</option>
          				<option value="2">2</option>
          				<option value="3">3</option>
          			</select>
      			</div>  
                <div class="error"></div>
              	<div>
              		<input class="btn btn-primary" type="submit" name="submit" value="Add" />
              	</div>
              </form>

            <script type="text/javascript">
      				$(document).ready(function() {
      					$("#add-post").validate({
      						rules: {
      							name:"required",
                                maxlength: 50
      						},
      						messages: {
      							name:"This field not null",
                                maxlength: "maxlength is 50 character"
      						}
      					});
      				});
                    
      			</script>
          </div>
        </div>
      </div>
  </div>
<%@include file="/templates/inc/footer.jsp" %> 
