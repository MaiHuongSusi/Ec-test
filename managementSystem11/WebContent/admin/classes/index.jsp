
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/inc/dashboard.jsp" %>  
<div class="content-wrapper py-3">
  <div class="container-fluid">
    <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>
          Bảng danh sach lop
        </div>
        <script type="text/javascript">
            $(document).ready(function(){
                $(document).on('change', '.checkall, .checkitem', function(){
                    var $_this = $(this);
                    document.getElementById("deleteall").style.display = "block";
                    if($_this.hasClass('checkall')){
                        $('.checkitem').prop('checked', $_this.prop('checked'));
                    }else{
                        var $_checkedall = true;
                        $('.checkitem').each(function(){
                            if(!$(this).is(':checked')){
                                $_checkedall = false;
                            }
                            $('.checkall').prop('checked', $_checkedall);
                        });
                    }
                    var $_uncheckedall = true;
                    $('.checkitem').each(function(){
                        if($(this).is(':checked')){
                            $_uncheckedall = false;
                        }
                        if($_uncheckedall){
                            document.getElementById("deleteall").style.display = "none";
                        }else{
                            document.getElementById("deleteall").style.display = "block";
                        }
                    });
                });
            });
        </script>
        <div class="card-body">
          <div class="table-responsive">
            <form action=""  method="post">
                <input style="display: none; margin-left: 10px; margin-bottom: 10px; color: red" id="deleteall" type="submit" value="Delete">
                <table class="table table-bordered" width="100%" id="dataTable" cellspacing="0">
                  <thead>
                    <tr>
                      <th width="20%">Delete All<input style="display: inline-block; margin-left: 15px;" type="checkbox" class="checkall"></th>
                      <th>Name</th>
                      <th width="20%">Service</th>
                    </tr>
                  </thead>
                  <tbody>
                     <tr>
                      	<td> <input type="checkbox" name="item1" value="1" class="checkitem" id="chkitem"> </td>
                     	<td> <a href="">abc</a> </td>
                    	<td>
                        <a style="display:block" href=""><i class="fa fa-edit"></i>Sửa</a>
                        <a style="display:block" href="" onclick="return confirm('Bạn có muốn xóa danh mục này?')"><i class="fa fa-trash"></i>Xóa</a>
                     </td>
                    </tr>
                     <tr>
                      	<td> <input type="checkbox" name="item2" value="2" class="checkitem" id="chkitem"> </td>
                     	<td> <a href="">abc</a> </td>
                    	<td>
                        <a style="display:block" href=""><i class="fa fa-edit"></i>Sửa</a>
                        <a style="display:block" href="" onclick="return confirm('Bạn có muốn xóa danh mục này?')"><i class="fa fa-trash"></i>Xóa</a>
                     </td>
                    </tr>
                     <tr>
                      	<td> <input type="checkbox" name="item3" value="3" class="checkitem" id="chkitem"> </td>
                     	<td> <a href="">abc</a> </td>
                    	<td>
                        <a style="display:block" href=""><i class="fa fa-edit"></i>Sửa</a>
                        <a style="display:block" href="" onclick="return confirm('Bạn có muốn xóa danh mục này?')"><i class="fa fa-trash"></i>Xóa</a>
                     </td>
                    </tr>
                  </tbody>
                </table>
            </form>
          </div>
        </div>
        <div class="card-footer small text-muted">
          Updated yesterday at 11:59 PM
        </div>
      </div>
    </div>
  </div>
<%@include file="/templates/inc/footer.jsp" %> 
