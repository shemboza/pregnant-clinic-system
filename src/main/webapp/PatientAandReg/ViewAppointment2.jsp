<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="PatientAppandReg.*,java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

 <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
 <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
<% List<AppointmentModel> modl =AppointmentDao.ViewAll(); %>
<div id="wrapper">

        <!-- Sidebar -->
        <%@ include file="../Admin/SideBar.jsp" %>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <%@ include file="../Admin/Header.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">View Appointment</h1>
                               
                    </div>
                    <!-- end page header -->
					
					<!-- DETAILS TO BE VIEWED IN ADMIN PAGE -->
					
					<table class="table table-striped">
						<thead>
						    <tr>
						     <th scope="col">APPOINTMENT_ID</th>
						     <th scope="col">PATIENT_ID</th>
						      <th scope="col">APPOINTMENT_DATE</th>
						      
						     
						      
						    </tr>
						  </thead>
						  <tbody> 
						 
						    <tr>
						   <% for(AppointmentModel mod:modl){ %>
						    <td><%=mod.getId()%></td>
						   	<td><%=mod.getPatientId()%></td>
						   	<td><%=mod.getDate()%></td>
					
						  
						    
						     <td>
						       <!-- Call to action buttons -->
						       <ul class="list-inline m-0">
						                                               
						      <!--   <li class="list-inline-item">
						     <a class="btn btn-success btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Edit" href="EditAppointment.jsp?id=<%=mod.getId()%>"><i class="fa fa-edit"></i></a>
						       </li>
						       <li class="list-inline-item">
						     <a class="btn btn-danger btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Delete" href="../AppointmentServlet?id=<%=mod.getId()%>"><i class="fa fa-trash"></i></a>
						       </li>-->
						       </ul>
						       </td>
						    <tr>
						  <%}%>
						      
						  </tr>
						  </tbody>
						</table>
					
					    
                    
                    <!-- END DETAILS TO BE VIEWED IN ADMIN PAGE -->

                </div>
                <!-- end Page Content -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

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
  
					
				
					
                    

               



</body>
</html>