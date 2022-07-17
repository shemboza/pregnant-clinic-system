<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
if(session.getAttribute("patient")==null){
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
 <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-primary">
 <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <%@ include file="P-SideBar.jsp" %>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <%@ include file="P-Header.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Make Appointment</h1>
                        
                    </div>
                    <!-- APPOINTMENT DETAILS -->
                     <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-3 d-none d-lg-block "></div>
                    <div class="col-lg-7">
                        <div class="p-5"> 
                            <div class="text-center"> 
                                <h1 class="h4 text-gray-900 mb-4">Make Appointment</h1>
                            </div>
                            <form class="user" action="../AppointmentServlet" method="post">
                               
                                <div class="form-group">
                                <select class="form-control" id="reason" name="message">
									    	<option>FOR MONTHLY CHECKING</option>
									    	<option>FOR KID HEART BEAT PROBLEM</option>
									    	<option>FOR KID HEART BEAT PROBLEM</option>
									    </select>
                                
                                </div>
                                <input type="submit" class="btn btn-primary btn-user btn-block" value="Make Appointment Now">
                                </form>
                                </div>
                               </div>
                             </div>
                           </div>
                         </div>
                      </div>
                    
                    <!-- END APPOINTMENT DETAIL -->

                    

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

   
</body>
</html>