<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.*,Employee.*,java.sql.*"%>

 <!-- for session --> 
     <%
    if(request.getSession().getAttribute("user")==null){
    	response.sendRedirect("../Userlogin/user.jsp");
    }
    %>   
    
     <%
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
 %>

<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body class="bg-light">
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

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <!-- Earnings (Monthly) Card Example -->

                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Patient (Registered)</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                           <%
                                           try{
                                   			Class.forName("com.mysql.jdbc.Driver");
                                   			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project2022","root","");
                                   			Statement st=con.createStatement();
                                   			String query="SELECT count(*) FROM registration";
                                   			ResultSet rs=st.executeQuery(query);
                                   			String countrow="";
                                   			while(rs.next()){
                                   				countrow=rs.getString(1);
                                   				out.print(countrow);
                                   			}
                                   		}catch(ClassNotFoundException | SQLException e) {
                                   			e.printStackTrace();
                                   			
                                           }
                                           
                                           
                                           %>
                                         </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Earnings (Annual)</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"> <%
                                           try{
                                   			Class.forName("com.mysql.jdbc.Driver");
                                   			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project2022","root","");
                                   			Statement st=con.createStatement();
                                   			String query="SELECT count(*) FROM  employeedetail";
                                   			ResultSet rs=st.executeQuery(query);
                                   			String countrow="";
                                   			while(rs.next()){
                                   				countrow=rs.getString(1);
                                   				out.print(countrow);
                                   			}
                                   		}catch(ClassNotFoundException | SQLException e) {
                                   			e.printStackTrace();
                                   			
                                           }
                                           
                                           
                                           %></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                         <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Tasks
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                                </div>
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-info" role="progressbar"
                                                            style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                Pending Requests</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 


                    <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-12 col-lg-12">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">View Employee</h6>
                                  
                                    </div>
                                </div>
                                <!-- Card Body -->
                                
                            </div>
                        </div>

                       <!-- DETAILS TO BE VIEWED IN ADMIN PAGE -->
						<div class="row">
							  	<!-- profile info side -->
										<div class="col-md-9 h-75">
											<div class="card card-stats bg-light shadow-sm">
												<div class="card-body ">
									<!-- form for change password -->	
										 <form action="../AdminChangepassword" method=post oninput='password.setCustomValidity(password.value != password1.value ? "Passwords do not match." : "")'>
												<!-- staff id -->
												<input type="hidden" class="form-control"  name="staffId" value="<%--=request.getSession().getAttribute("userId")--%>">
												<!-- staff id end -->
											<table class="table table-bordered  table-sm " >
												<thead class="bg-dark">
												<tr class="text-white p-2">
														<th colspan="10" class="p-2">Login Information</th>
													</tr>
												</thead>
												<tbody>
												<tr>
														<td class="col-4 p-2">
															<div class=""><h6>User Name</h6></div>
															<div class=""><sup></sup></div>
														</td>
														<td class="col-8 p-2">
															<div class="">
															<%--=request.getSession().getAttribute("username")--%>
															</div>
														</td>
													</tr>
													<tr>
														<td class="col-4 p-2">
															<div class=""><h6>Gender</h6></div>
															<div class=""><sup></sup></div>
														</td>
														<td class="col-8 p-2">
															<div class="">
															<span class="badge rounded-pill bg-primary"><%--=request.getSession().getAttribute("gender")--%></span>
															</div>
														</td>
													</tr>
													
													<tr>
													
														<td class="col-4 p-2">
															<div class=""><h6>Password</h6></div>
															<div class=""><sup>Enter New Password</sup></div>
														</td>
														<td class="col-8 p-2">
															<div class="pt-1">
															 <input type="password" class="form-control"  name="password1" placeholder="Password"  required="required">
															</div>
														</td>
													</tr>
													<tr>
														<td class="col-4 p-2">
															<div class=""><h6>Password</h6></div>
															<div class=""><sup>Re-Enter New Password</sup></div>
														</td>
														<td class="col-8 p-2">
															<div class="pt-1">
																<input type="password" class="form-control"  name="password" placeholder="Password"  required="required">
															</div>
														</td>
													</tr>
													<tr>
														<td class="col-4 p-2">
															<div class=""><h6>Role</h6></div>
															<div class=""><sup></sup></div>
														</td>
														<td class="col-8 p-2">
															<div class=""><%--=request.getSession().getAttribute("role")--%></div>
														</td>
													</tr>
												</tbody>
											</table>
											
											<div>
													<%-- if(request.getSession().getAttribute("error") != null){out.println("<span style='color:red'><i class='fas fa-exclamation-circle'></i>" +request.getSession().getAttribute("error")+"</dspan>");}
										             if(request.getSession().getAttribute("success") != null){out.println("<span style='color:green'><i class='fas fa-check-circle'></i> " +request.getSession().getAttribute("success")+ "</span>");}
										             request.getSession().setAttribute("error", null);request.getSession().setAttribute("success", null); --%>
									       	</div>
											
											
												<div class="text-end">
													<button class="btn btn-primary btn-sm"  type="submit"><i class="fa fa-save" aria-hidden="true"></i> Save Changes</button>
												</div>
							
										</form>	
									<!-- form for change password -->	
												</div>
											</div>
										</div>
								<!-- profile info side end-->
								
								<!-- profile picstart -->
									<div class="col-md-3">
											<div class="card card-stats bg-light shadow-sm">
								 				<div class="card-body ">
											
													<table class="table table-bordered table-sm " >
														<thead class="bg-dark">
															<tr class="text-white p-2">
																<th class="p-2">Profile Photo</th>
															</tr>
														</thead>
														<tbody class="text-center ">
															<tr>
																<td class="text-center ">
																	<img src="../image/profiles/pr.png" alt="profilephoto" class="img-fluid ">
																</td>
															</tr>
														 </tbody>
													 </table>
												</div>
											</div>
									</div>
									<!-- profile picstart -->					
								</div>
                       
                             
                               
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
    <!-- table serch java script zake hizi -->


			
			<!-- start nav header-->
		
		<jsp:include page="../Admin/Header.jsp"></jsp:include>	
			
			<!-- nav end -->
			
			<!-- main body -->
			
				<div class="rowbody ">
				 
				  <div class="mainboddy container bg-light">
				  	<!-- page tittle -->		   
				  	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				        <h5 class=""><i class="fa fa-fw fa-user-cog"></i> Account Settings</h5>
				      <!--   <div class="btn-toolbar mb-2 mb-md-0">
				          <div class="btn-group me-2">
				            <a type="button" class="btn btn-sm btn-outline-secondary">Share</a>
				            <a type="button" class="btn btn-sm btn-outline-secondary">Export</a>
				          </div>
				          <a type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle" data-bs-toggle="modal" data-bs-target="#myModa" >
				            
				            <i class="fa fa-plus-circle" aria-hidden="true"></i> Add Case
				          </a>
				        </div> -->
				     </div>
				 
				  	<!-- data zote hapa -->		
				  	
				
							  
				  	
				   </div>
				   <!-- main end -->
				</div>
				


</body>
</html>


