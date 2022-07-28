<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="PatientFiles.*,java.util.*,java.sql.*" %>
    <%@ page import="LoginUser.*" %>

<% response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
	response.addHeader("Pragma", "no-cache");
	response.addDateHeader("Expires", 0);
	
%>
<%
if(session.getAttribute("laboratory")==null){
	response.sendRedirect("../Userlogin/user.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>

 <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
 <link href="/PROJECT2022/src/main/webapp/PatientFiles/assets/css/bootstrap.min.css">
 <link 
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
<% List<PrimaryFileModel> modl =PrimaryFileDao.SeAll(); %>

 <div id="wrapper">

        <!-- Sidebar -->
        <%@ include file="Labsidebar.jsp" %>
         
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <%@ include file="Labheader.jsp" %>
                
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">View Primary File</h1>
                               
                    </div>
                    <!-- end page header -->
					
					<!-- DETAILS TO BE VIEWED IN ADMIN PAGE -->
					<div class="card">
						<div class="card-body">
							<div class="table-responsive">
					<table class="table table-striped">
						<thead>
						    <tr>
						     <th scope="col">CLINIC NAME</th>
						     <th scope="col">PATIENT_ID</th>
						     <th scope="col">FILE NUMBER</th>
						     <th scope="col">PATIENT AGE</th>
						      <th scope="col">AGE STATUS</th>
						     <th scope="col">PATIENT NAME</th>
						      <th scope="col">HUSBAND NAME</th>
						      <th scope="col">HUSBAND AGE</th>
						       <th scope="col">HUSBAND JOB</th>
						     
						      <th scope="col">HUSBAND EDUCTION LEVEL</th>
						      <th scope="col">PATIENT JOB</th>
						      <th scope="col">PREGNANT NUMBER</th>
						       <th scope="col">PREVIOUS PREG NUMBER</th>
						     <th scope="col">CHILDREN SURVIVE</th>
						      <th scope="col">STREET NAME</th>
						      <th scope="col">CHAIRPERSON NAME</th>
						      <th scope="col">LAST MENSTRUAL DATE</th>
						      <th scope="col">EXPECTED BIRTH DATE</th>
						       <th scope="col">PREGNANT MORE THAN 2 DESTROYED</th>
						     <th scope="col">BIRTH BY</th>
						      <th scope="col">DIABETES</th>
						      <th scope="col">HEART DISEASE</th>
						      <th scope="col">TB</th>
						      <th scope="col">BLOOD GROUP</th>
						       <th scope="col">RH</th>
						     <th scope="col">VDRTRPR</th>
						      <th scope="col">MRDT</th>
						      <th scope="col">PROF SIGNATURE</th>
						      
						    </tr>
						  </thead>
						  <tbody> 
						 
						    <tr>
						   <% for(PrimaryFileModel mod:modl){ %>
						    <td><%=mod.getClinicname() %></td>
						   	<td><%=mod.getPatientid() %></td>
						   	<td><%=mod.getFileno() %></td>
						    <td><%=mod.getPatientage() %></td>
						    <td><%=mod.getAgeabove18() %></td>
						   	<td><%=mod.getPatientname() %></td>
						   	<td><%=mod.getHusbandname() %></td>
						    <td><%=mod.getHusbandage() %></td>
						    <td><%=mod.getHusbandjob() %></td>
						   	<td><%=mod.getHusbedulevel() %></td>
						   	<td><%=mod.getPatientjob() %></td>
						    <td><%=mod.getPregnantnumber() %></td>
						    <td><%=mod.getPreviouspregnant() %></td>
						   	<td><%=mod.getChildrensurvive() %></td>
						   	<td><%=mod.getStreetname() %></td>
						    <td><%=mod.getChairpersonname() %></td>
						    <td><%=mod.getLastmenstruationdate() %></td>
						   	<td><%=mod.getBirthdate() %></td>
						   	<td><%=mod.getDestroyedmore2preg() %></td>
						    <td><%=mod.getOperation() %></td>
						    <td><%=mod.getDiabetes() %></td>
						   	<td><%=mod.getHeartdisease() %></td>
						    <td><%=mod.getTb() %></td>
						    <td><%=mod.getBloodgroup() %></td>
						   	<td><%=mod.getRh() %></td>
						    <td><%=mod.getVdrlrpr() %></td>
						    <td><%=mod.getMrdt()%></td>
						   	<td><%=mod.getSignature() %></td>
						
						    
						  
						    
						     <td>
						       <!-- Call to action buttons -->
						       <ul class="list-inline m-0">
							    <li class="list-inline-item">
						     <a class="btn btn-default btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="View" href="PrintingFilePri.jsp?id=<%=mod.getFileno()%>"><i class="icon-eye-open"></i></a>
						       </li>                                           
						       <li class="list-inline-item">
						     <a class="btn btn-success btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Edit" href="PrimaryFileEditing.jsp?id=<%=mod.getFileno()%>"><i class="fa fa-edit"></i></a>
						       </li>
						       <li class="list-inline-item">
						     <a class="btn btn-danger btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Delete" href="../?id=<%=mod.getFileno()%>"><i class="fa fa-trash"></i></a>
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