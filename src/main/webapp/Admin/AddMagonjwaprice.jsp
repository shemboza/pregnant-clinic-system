<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
   <%@ page import="LoginUser.*" %>





 
   
	
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

<link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
<!-- Page Wrapper -->
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
                                <h1 class="h4 text-gray-900 mb-4">Disease Prices</h1>
                            </div>
					<form class="user" action="../DiseasesPriceAdd" method="post">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="number" class="form-control form-control-user" id="Add RH Price"
                                            placeholder="Add Blood Price" name="Blood">
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="number" class="form-control form-control-user"
                                            id="Add RH Price" placeholder="Add RH Price" name="RH">
                                     </div>
                                    
                                </div>
                                 <div class="form-group row">
                                   
                                   
                                    
                                  </div>
                                <div class="form-group">
                                    <input type="number" class="form-control form-control-user" id="Add Vdruprp Price"
                                        placeholder="Add Vdruprp Price" name="Vdruprp">
                                </div>
                               
                                <div class="form-group ">
                                    
                                        <input type="number" class="form-control form-control-user"
                                            id=" Add Mrdt Price" placeholder=" Add Mrdt Price" name="Mrdt">
                                    

                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="number" class="form-control form-control-user"
                                            id=" HusbandJob" placeholder="Add Pressure Price" name="Pressure">
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="number" class="form-control form-control-user"
                                            id="Add Urine Price" placeholder="Add Urine Price" name="Urine">
                                     </div>
                                </div>
                                 <div class="form-group">
                                    <input type="number" class="form-control form-control-user" id=" HusbandEducationLevel"
                                        placeholder="Add Malaria Price" name="Malaria">
                                </div>
                                 
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user"
                                            id=" Add TB Price" placeholder=" Add TB Price" name="TB">
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="number" class="form-control form-control-user"
                                            id="ChairpersonName" placeholder="Add BodyKilo Price" name="BodyKilo">
                                     </div>
                                </div>
                                  <input type="submit" class="btn btn-primary btn-user btn-block" value="Create Diseases price">
                              
                               </form>
                                
                                </div>  
                		</div>
                		</div>
                		</div>
                		</div>
                		</div>
                		</div>
                		</div>
                		</div>
                		</div>
                		
                		
                		
                            
                                

					
					    
                    
                    <!-- END DETAILS TO BE VIEWED IN ADMIN PAGE -->
                       
                             
                               
                    

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">

                           
                           

                        </div>

                        <div class="col-lg-6 mb-4">

                           

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