<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="LoginUser.*,java.util.List,PatientFiles.*" %>
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
 <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet"></head>
<body>
<%  
	List<PrimaryFileModel> modl = PrimaryFileDao.SeAll();
%>
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
                        <h1 class="h3 mb-0 text-gray-800">Create Progress File</h1>
                               
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
                                <h1 class="h4 text-gray-900 mb-4">Progress Attendance file</h1>
                            </div>
                            <form class="user" action="../ProgressServlet" method="post">
                            <div class="form-group">
                                     <select class="form-control" id="Filenumber"
                                             name="PatientFile">
                                              <% for(PrimaryFileModel mod:modl){ %>
                                             <option><%=mod.getPatientid() %></option><%} %>
                                             </select>
                                </div>
                                <div class="form-group row ">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <select class="form-control" id="Filenumber"
                                             name="Filenumber">
                                              <% for(PrimaryFileModel mod:modl){ %>
                                             <option><%=mod.getFileno() %></option><%} %>
                                             </select>
                                            
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="date" class="form-control form-control-user"
                                            id="AttendanceDate" placeholder="AttendanceDate" name="AttendanceDate">
                                     </div>
                                    
                                </div>
                                 <div class="form-group row">
                                   
                                   
                                    
                                  </div>
                                <div class="form-group">
                                    <input type="number" class="form-control form-control-user" id="BodyKg"
                                        placeholder="Kg" name="bodykg">
                                </div>
                               
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="number" class="form-control form-control-user"
                                            id="Bloodpressure" placeholder="Bloodpressure" name="Bloodpressure">
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user"
                                            id="Urine" placeholder="Urine" name="Urine">
                                     </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="number" class="form-control form-control-user"
                                            id="Lengthofpregnantperweek" placeholder="Lengthofpregnantperweek" name="Lengthofpregnantperweek">
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="number" class="form-control form-control-user"
                                            id="heightofpregnantperweek" placeholder="heightofpregnantperweek" name="heightofpregnantperweek">
                                     </div>
                                </div>
                                 <div class="form-group">
                                    <select class="form-control" id="childplay" name="childplay">
									    	<option>Yes kid play</option>
									    	<option>No kid not play</option>
									    </select>
                                </div>
                                 
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                         <select class="form-control" id="heartbeatperweek" name="heartbeatperweek">
									    	<option>Yes heart beat</option>
									    	<option>No kid not play</option>
									    </select>
                                    </div>
                                     <div class="col-sm-6">
                                         <select class="form-control" id="swollenfeet" name="swollenfeet">
									    	<option>Yes swollen feet</option>
									    	<option>No swollen feet</option>
									    </select>
                                     </div>
                                </div>
                                 <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="Sulphur"
                                        placeholder="Sulphur" name="Sulphur">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user"
                                            id="Previouspregnacy" placeholder="Dozzperweek" name="Dozzperweek">
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user"
                                            id="Pepopunda" placeholder="Pepopunda" name="Pepopunda">
                                     </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <select class="form-control" id="DangerousSign" name="DangerousSign">
									    	<option>Yes danger Sign</option>
									    	<option>No danger Sign</option>
									    </select>
                                    </div>
                                     <div class="col-sm-6">
                                     <select class="form-control" id="BirthControl" name="BirthControl">
									    	<option>Yes birth control</option>
									    	<option>No birth control</option>
									    </select>
                                        
                                     </div>
                                </div>
                                <div class="form-group row">
                          			<div class="col-sm-6">
                                        <select class="form-control" id="birthPreparation" name="birthPreparation">
									    	<option>yes birth preparation </option>
									    	<option>No birth preparation</option>
									    </select>
                                     </div>
                                     <div class="col-sm-6">
                                     <select class="form-control" id="PMTCT_ART" name="PMTCT_ART">
									    	<option>0</option>
									    	<option>1</option>
									    	<option>2</option>
									    </select>
                                     </div>
                                  </div>
                                  <div class="form-group row">
                          			<div class="col-sm-6">
                                        <select class="form-control " id="exampleRepeatPassword" name="balancediet_advice">
									    	<option>Yes  advice balance_diet</option>
									    	<option>No advice balance_diet</option>
									    </select>
                                     </div>
                                    
                                     <div class="col-sm-6">
                                    <input type="date" class="form-control form-control-user" id="DateToBeBack"
                                        placeholder="DateToBeBack" name="DateToBeBack">
                                </div>
                                </div>
                                    
                                
                                  <div class="form-group row">
                          			<div class="col-sm-6">
                                     <input type="text" class="form-control form-control-user"
                                            id="Professional signature" placeholder="Professionalsignature" name="Professionalsignature">
                                     </div>
                                      <div class="col-sm-6">
                                      <input type="text" class="form-control form-control-user"
                                            id="Professionalsignature" placeholder="position" name="Professionalposition">
                                     </div>
                                  </div>
                                  
                                     
                                
                                  
                                
                               
                             <input type="submit" class="btn btn-primary btn-user btn-block" value="Create progress File">
                                
                                
                            </form>
                           
                            
                            
                        </div>
                    </div>
                </div>
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