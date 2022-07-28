<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="PatientFiles.*,java.util.*,java.sql.*" %>
    <%@ page import="LoginUser.*" %>

<%@ page import="PatientAppandReg.*,java.util.*" %>
<%@ page import="java.sql.*" %>


 
   
	
<%
response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
	response.addHeader("Pragma", "no-cache");
	response.addDateHeader("Expires", 0);
	
%>
<%
if(session.getAttribute("doctor")==null){
	response.sendRedirect("../Userlogin/user.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="/PROJECT2022/src/main/webapp/PatientFiles/assets/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
  rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
<% List<ProgressFileModel> modl =ProgressDao.SeAll();%>

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
                        <h1 class="h3 mb-0 text-gray-800">View Progress File</h1>
                               
                    </div>
                    <!-- end page header -->
					
					<!-- DETAILS TO BE VIEWED IN ADMIN PAGE -->
					<div class="card">
						<div class="card-body">
							<div class="table-responsive">
					<table class="table table-striped">
						<thead>
						    <tr>
						     <th scope="col">FILE NUMBER</th>
						     <th scope="col">ATTENDANCE DATE</th>
						     
						     <th scope="col">BODYWEIGHT</th>
						      <th scope="col">BLOOD PRESSURE</th>
						     <th scope="col">URINE</th>
						      <th scope="col">LENGTH OF PREGNANT</th>
						      <th scope="col">HEIGHT OF PREGNANT</th>
						       <th scope="col">CHILD PRAY</th>
						   	 <th scope="col">HEART BEAT PER WEEK</th>
						      <th scope="col">SWOLLEN FEET</th>
						      <th scope="col">SULPHUR</th>
						      <th scope="col">DOZZ PER WEEK</th>
						     <th scope="col">PEPOPUNDA</th>
						      <th scope="col">DANGERSIGN</th>
						      <th scope="col">BIRTH CONTROL</th>
						      <th scope="col">BIRTH PREPARATION</th>
						      <th scope="col">PMTCT_ART</th>
						       <th scope="col">BALANCEDIET</th>
						     <th scope="col">DATE TO BE BACK</th>
						      <th scope="col">PROFESSIONAL SIGNATURE</th>
						 		<th scope="col">PROF POSITION</th>
						      
						    </tr>
						  </thead>
					 <tbody> 
						 
						    <tr>
						   <% for(ProgressFileModel mod:modl){ %>
						    <td><%=mod.getPatientid()%></td>
						    <td><%=mod.getFileno()%></td>
						   	<td><%=mod.getAttendancedate()%></td>
						   	<td><%=mod.getBodykg() %></td>
						    <td><%=mod.getBloodpressure() %></td>
						    <td><%=mod.getUrine() %></td>
						   	<td><%=mod.getLengthofpregnantperweek() %></td>
						   	<td><%=mod.getHeightofpregnant() %></td>
						    <td><%=mod.getKidplay() %></td>
						    <td><%=mod.getHeatbeat() %></td>
						   	<td><%=mod.getSwollenlegs() %></td>
						   	<td><%=mod.getSulphur() %></td>
						    <td><%=mod.getDozperweek() %></td>
						    <td><%=mod.getPepopunda() %></td>
						   	<td><%=mod.getDangersign() %></td>
						   	<td><%=mod.getBirthcontrol() %></td>
						    <td><%=mod.getBirthpreparation() %></td>
						    <td><%=mod.getPmtct() %></td>
						   	<td><%=mod.getBalancediet() %></td>
						   	<td><%=mod.getDatetobeback() %></td>
						    <td><%=mod.getProffessionalname() %></td>
						    <td><%=mod.getProffposition() %></td>
						    <td>
						       <!-- Call to action buttons -->
						       <ul class="list-inline m-0">
							    <li class="list-inline-item">
						     <a class="btn btn-success btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Print" href="Progressprint.jsp?id=<%=mod.getFileno()%>"><i class="fa fa-table"></i></a>
						       </li>                                           
						       <li class="list-inline-item">
						     <a class="btn btn-success btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Edit" href="ProgressFileEditing.jsp?id=<%=mod.getFileno()%>"><i class="fa fa-edit"></i></a>
						       </li>
						       <li class="list-inline-item">
						     <a class="btn btn-danger btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Delete" href="../DeleteProgressFile?id=<%=mod.getFileno() %>"><i class="fa fa-trash"></i></a>
						       </li>
						       </ul>
						       </td>
						    <tr>
						  <%}%>
						      
						  </tr>
						  </tbody> 
						</table>
					</div>
						</div>
					</div>
					
					    
                    
                    <!-- END DETAILS TO BE VIEWED IN ADMIN PAGE -->

      </div>
      </div>
      </div>
      </div>
      

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