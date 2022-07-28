<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="LoginUser.*,java.util.List,PatientAppandReg.*" %>
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
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
<%  
	List<PatientModel> modl = PatientDao.SeAll();
%>
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
                        <h1 class="h3 mb-0 text-gray-800">First Patient File</h1>
                               
                    </div>
                    <!-- end page header -->
					
					<!-- DETAILS TO BE VIEWED IN ADMIN PAGE -->
					
					<div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-3 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create Patient File</h1>
                            </div>
                            <form class="user" action="../PrimaryFileinsert" method="post">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="ClinicName"
                                            placeholder="ClinicName" name="ClinicName">
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="number" class="form-control form-control-user"
                                            id=" PatientAge" placeholder=" PatientAge" name="PatientAge">
                                     </div>
                                    
                                </div>
                                 <div class="form-group row">
                                   
                                   
                                    
                                  </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="PatientName"
                                        placeholder="PatientName" name="PatientName">
                                </div>
                               
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user"
                                            id=" Husband Name" placeholder=" Husband Name" name="HusbandName">
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="number" class="form-control form-control-user"
                                            id="HusbandAge" placeholder="HusbandAge" name="HusbandAge">
                                     </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user"
                                            id=" HusbandJob" placeholder=" HusbandJob" name="HusbandJob">
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user"
                                            id="Patientjob" placeholder="Patientjob" name="Patientjob">
                                     </div>
                                </div>
                                 <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id=" HusbandEducationLevel"
                                        placeholder=" HusbandEducationLevel" name="HusbandEducationLevel">
                                </div>
                                 
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user"
                                            id=" StreetName" placeholder=" StreetName" name="StreetName">
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user"
                                            id="ChairpersonName" placeholder="ChairpersonName" name="ChairpersonName">
                                     </div>
                                </div>
                                 <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="Pregnantnumber"
                                        placeholder="Pregnantnumber" name="Pregnantnumber">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="number" class="form-control form-control-user"
                                            id="Previouspregnacy" placeholder=" Previouspregnacy" name="Previouspregnacy">
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="number" class="form-control form-control-user"
                                            id="Childrennumbersurvive" placeholder="Childrennumbersurvive" name="Childrennumbersurvive">
                                     </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="date" class="form-control form-control-user"
                                            id="Lastmenstruationperiod" placeholder="Lastmenstruationperiod" name="Lastmenstruationperiod">
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="date" class="form-control form-control-user"
                                            id="Birthdateexpected" placeholder="Birthdateexpected" name="Birthdateexpected">
                                     </div>
                                </div>
                                <div class="form-group row">
                          			<div class="col-sm-6">
                                        <select class="form-control" id="exampleRepeatPassword" name="Pregnantdestroyed">
									    	<option>pregnant destroyed more than 2</option>
									    	<option>pregnant not destroyed</option>
									    </select>
                                     </div>
                                     <div class="col-sm-6">
                                     <select class="form-control " id="exampleRepeatPassword" name="birthbyOperational">
									    	<option>by operation</option>
									    	<option>by normal</option>
									    </select>
                                     </div>
                                  </div>
                                  <div class="form-group row">
                          			<div class="col-sm-6">
                                        <select class="form-control " id="exampleRepeatPassword" name="heartdisease">
									    	<option>heart disease</option>
									    	<option>no heart disease</option>
									    </select>
                                     </div>
                                     <div class="col-sm-6">
                                     <select class="form-control " id="exampleRepeatPassword" name="diabetes">
									    	<option>diabetes</option>
									    	<option>no diabetes</option>
									    </select>
                                     </div>
                                  </div>
                                   <div class="form-group">
                                   <select class="form-control " id="TB" name="TB">
									    	<option>TB disease</option>
									    	<option>no TB disease</option>
									    </select>
                                    
                                </div>
                                  <div class="form-group row">
                          			<div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user"
                                            id="Blood group" placeholder="Bloodgroup" name="Bloodgroup">
                                     </div>
                                     <div class="col-sm-6">
                                     <select class="form-control " id="RH" name="RH">
									    	<option>RH positive</option>
									    	<option>RH negative</option>
									    </select>
                                     </div>
                                  </div>
                                  <div class="form-group row">
                          			<div class="col-sm-6">
                                        <select class="form-control " id="VDRLRPR" name="VDRLRPR">
									    	<option>VDRLRPR positive</option>
									    	<option>VDRLRPR negative</option>
									    </select>
                                     </div>
                                     <div class="col-sm-6">
                                     <select class="form-control" id="MRDT" name="MRDT">
									    	<option>MRDT positive</option>
									    	<option>MRDT negative</option>
									    </select>
                                     </div>
                                  </div>
                                  
                                  <div class="form-group row">
                          			<div class="col-sm-6">
                                     <input type="text" class="form-control form-control-user"
                                            id="Professional signature" placeholder="Professionalsignature" name="Professionalsignature">
                                     </div>
                                      <div class="col-sm-6">
                                     <select class="form-control " id="exampleRepeatPassword" name="option">
									    	<option>Above 18</option>
									    	<option>Below 18</option>
									    </select>
                                     </div>
                                  </div>
                                  <div class="form-group ">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <select  class="form-control " id="PatientId" name="PatientId">
                                    <% for(PatientModel mod:modl){ %>
                                   
                                    <option><%=mod.getId() %></option>
                                      <%} %>
                                    </select>
                                  
                                    </div>
                                     
                                </div>
                                  <div class="form-group ">
                                   
                                    
                                </div>
                                
                               
                             <input type="submit" class="btn btn-primary btn-user btn-block" value="Create First File">
                                
                                
                            </form>
                            
                            
                        </div>
                    </div>
                </div>
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