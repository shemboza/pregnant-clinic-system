<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Payment.*,java.util.*,java.sql.*" %>
    <%
if(session.getAttribute("doctor")==null){
	response.sendRedirect("../Userlogin/user.jsp");
}
%>
<% response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
	response.addHeader("Pragma", "no-cache");
	response.addDateHeader("Expires", 0);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
 <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
<% List<PaymentModel> modl = PaymentDao.ViewAll(); %>
<div id="wrapper">

        <!-- Sidebar -->
        <%@ include file="SideBar.jsp"%>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content"> 

                <!-- Topbar -->
                <%@ include file="Header.jsp" %>

                <!-- Topbar Navbar -->
                   
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    

                    
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                                            <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-12 col-lg-12">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">View Appointment Payment</h6>
                                  
                                    </div>
                                </div>
                                <!-- Card Body -->
                                
                            </div>
                        </div>

                       <!-- DETAILS TO BE VIEWED IN ADMIN PAGE -->
					<table class="table table-striped">
						<thead>
						    <tr>
						     <th scope="col">APPOINTMENT_ID</th>
						     <th scope="col">PATIENT_ID</th>
						      <th scope="col">PATIENT NAME</th>
						      <th scope="col">RECEIPT</th>
						     
						     <th scope="col">STATUS</th>
						      
						    </tr>
						  </thead>
						  <tbody> 
						 
						    <tr>
						   <% for(PaymentModel mod:modl){ %>
						    <td><%=mod.getApointmentid() %></td>
						   	<td><%=mod.getPatientid()%></td>
						   	<td><%=mod.getMtandao()%></td>
						   <td><img src="../PatientAandReg/Images/<%=mod.getPaymentcode()%>" style="width:50px; height:50px"></td>
						  
						    <%
						    if(mod.getStatus().equals("Confirmed")){
						    %>
						    <td><span class="badge badge-success">Approved</span></td>
						    <%
						    }else{
						    %>
						    <td><span class="badge badge-danger">Not Approved</span></td>
						  	<%} %>
						    
						     <td>
						       <!-- Call to action buttons -->
						       <ul class="list-inline m-0">
						       <li class="list-inline-item">
						     <a class="btn btn-primary btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="View" href="Approve.jsp?statusid=<%=mod.getApointmentid()%>"><i class="fa fa-table"></i></a>
						       </li>                                        
						       <li class="list-inline-item">
						     <a class="btn btn-success btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Edit" href="../ApprovePayment?statusid=<%=mod.getApointmentid()%>"><i class="fa fa-edit"></i></a>
						       </li>
						      
						       </ul>
						       </td>
						    <tr>
						  <%}%>
						      
						  </tr>
						  </tbody>
						</table>
					
					    
                    
                    <!-- END DETAILS TO BE VIEWED IN ADMIN PAGE -->
                       
                             
                               
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">

                           
                           

                        </div>

                        <div class="col-lg-6 mb-4">

                           

                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->


  <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>
  
<script type="text/javascript">


function myFunction() {
	  var input, filter, table, tr, td, i;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable");
	  var rows = table.getElementsByTagName("tr");
	  for (i = 0; i < rows.length; i++) {
	    var cells = rows[i].getElementsByTagName("td");
	    var j;
	    var rowContainsFilter = false;
	    for (j = 0; j < cells.length; j++) {
	      if (cells[j]) {
	        if (cells[j].innerHTML.toUpperCase().indexOf(filter) > -1) {
	          rowContainsFilter = true;
	          continue;
	        }
	      }
	    }

	    if (! rowContainsFilter) {
	      rows[i].style.display = "none";
	    } else {
	      rows[i].style.display = "";
	    }
	  }
	}




</script>					
				
                

</body>
</html>