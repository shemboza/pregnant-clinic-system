<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="PatientAppandReg.*,PatientFiles.*,java.util.*,java.sql.*" %>
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% List<PatientModel> mod=PatientDao.SeAll(); %> 
<%  List<PrimaryFileModel> modl=PrimaryFileDao.SeAll();%>
 <div id="wrapper">

        <!-- Sidebar -->
        <%@ include file="../Admin/SideBar.jsp"%>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content"> 

                <!-- Topbar -->
                <%@ include file="../Admin/Header.jsp" %>

                <!-- Topbar Navbar -->
                   
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                   

                    <!-- Content Row -->
                   

                       

                    <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-12 col-lg-12">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Doctor Comment</h6>
                                  
                                    </div>
                                </div>
                                <!-- Card Body -->
                                
                            </div>
                      

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
                                <h1 class="h4 text-gray-900 mb-4">Doctor Comment</h1>
                            </div>
							<form class="user" action="../DoctorCommentServlet" method="post">
							  
							  <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                   
                                        <select  class="form-control " id="Patientname"
                            				name="Patientname" >
                            				 <% for(PatientModel m:mod){%>
                            				<option><%=m.getFname() %></option>
                            				 <%} %>
                                            </select>
                                           
                                    </div>
                                     <div class="col-sm-6">
                                        <select  class="form-control "
                                            id=" PatientAge"  name="PatientId">
                                            <% for(PatientModel m:mod){%>
                                            <option><%=m.getId() %></option>
                                            <%} %>
                                            </select>
                                     </div>
                                    
                                </div>
                                <div class="form-group ">
                                
                                        <select  class="form-control "
                                            id=" PatientAge"  name="Filenumber">
                                            <%for(PrimaryFileModel mo:modl) {%>
                                            <option><%=mo.getFileno() %></option>
                                            <%} %>
                                            </select>
                                     
                                     </div>
                               
								<div class="form-group">
								<textarea name="comment" rows="10" cols="30" class="form-control form-control-user" id="exampleInputEmail"  placeholder="Reason of appointment">
                                
								</textarea>
                                    
							</div>
 							 <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="todaydate"
                                            placeholder="Doctor name" name="doctorname">
                                    </div>
                                 <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" id="todaydate"
                                            placeholder="Doctor sign" name="doctorsign">
                                     </div>
                                     </div>
<input type="submit" class="btn btn-primary btn-user btn-block" value="Comment on Medicine">
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

  
					


</body>
</html>