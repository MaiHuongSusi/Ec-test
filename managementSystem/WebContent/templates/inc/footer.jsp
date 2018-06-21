
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Scroll to Top Button -->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>

    <!-- Logout Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Bạn Có Muốn Đăng Xuất?</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="<%= request.getContextPath()%>/admin/logout">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    
    <script src="<%= request.getContextPath()%>/templates/vendor/popper/popper.min.js"></script>
    <script src="<%= request.getContextPath()%>/templates/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="<%= request.getContextPath()%>/templates/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="<%= request.getContextPath()%>/templates/vendor/chart.js/Chart.min.js"></script>
    <script src="<%= request.getContextPath()%>/templates/vendor/datatables/jquery.dataTables.js"></script>
    <script src="<%= request.getContextPath()%>/templates/vendor/datatables/dataTables.bootstrap4.js"></script>
	<script src="https://cdn.jsdelivr.net/bootstrap.tagsinput/0.8.0/bootstrap-tagsinput.min.js"></script>
    <!-- Custom scripts for this template -->
    <script src="<%= request.getContextPath()%>/templates/js/sb-admin.min.js"></script>
	
  </body>
<script type="text/javascript">
       	 var motaeditor = CKEDITOR.replace('motaeditor');
       	 
       	var chitieteditor = CKEDITOR.replace('chitieteditor');
		</script>
</html>