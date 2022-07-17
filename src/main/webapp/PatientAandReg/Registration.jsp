<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>
<script type="text/javascript">
function passwordverification(){
	
	var pw=document.getElementById("exampleRepeatPassword").value;
	if(pw==""){
		document.getElementById("message").innerHTML="**Fill the password please";
		return false;
	}
	
	if(pw.length<8){
		document.getElementById("message").innerHTML="** Password length must be atleast 8 characters";
		return false;
	}
	if(pw.length>15){
		document.getElementById("message").innerHTML="**Password length must not exceed 15 characters";
		return false;
	}else{
		alert("Password is correct");
	}
}








</script>
<body class="bg-gradient-primary">
<!-- Page Wrapper -->
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
                        <h1 class="h3 mb-0 text-gray-800">Register Unregistered Patient</h1>
                               
                    </div>
                    <!-- end page header -->
					
					<!-- DETAILS TO BE VIEWED IN ADMIN PAGE -->
					<div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-3 d-none d-lg-block "></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Account For Unregistered Patient!</h1>
                            </div>
                            <form class="user" action="../Registrationinsert" method="post" onsubmit="passwordverification()">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="Enter your name" name="FirstName">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" id="exampleLastName"
                                            placeholder="Enter Last Name" name="LastName">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" id="Email"
                                        placeholder="Email Address" name="Email">
                                </div>
                                <div class="form-group row">
                                   
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="password" name="password">
                                            <span id="message" style="color:red"></span>
                                     </div>
                                     <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user"
                                            id="address" placeholder="Address" name="Address">
                                     </div>
                    			</div>
                    			 <div class="form-group">
                                    <input type="number" class="form-control form-control-user" id="exampleIEmail"
                                        placeholder="Enter Contact Number" name="Contact">
                                </div>
                                <div class="form-group">
                                    
                                        <input type="Date" class="form-control form-control-user"
                                            id="exampledate" placeholder="Professional_status" name="Date_of_birth">
                                 
                                    
                                </div>
                                 
                                <input type="submit" class="btn btn-primary btn-user btn-block" value="Register Employee">
                                
                                
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
    <!-- table serch java script zake hizi -->



    

    

    
</body>
</html>