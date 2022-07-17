 <%@ page import="LoginUser.*" %>
<!-- Sidebar -->
<%@ page import="PatientAppandReg.*,java.util.*" %>

 <% response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
	response.addHeader("Pragma", "no-cache");
	response.addDateHeader("Expires", 0);
	
%>
<%
if(session.getAttribute("doctor")==null){
	response.sendRedirect("../Userlogin/user.jsp");
}
%>
 <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion " id="accordionSidebar">
		
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
                <div class="sidebar-brand-icon rotate-n-15">
                 ${doctor.role } 
                </div>
                <div class="sidebar-brand-text mx-3"></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="#">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>
            

          
          
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Employees Detail</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Employee Components:</h6>
                        <a class="collapse-item" href="EmployeeAdd.jsp">New Employee</a>
                        <a class="collapse-item" href="AddMagonjwaprice.jsp">Add Diseases Price</a>
                        <a class="collapse-item" href="ViewEmployees.jsp">View Employee</a>
                        <a class="collapse-item" href="../PatientAandReg/ViewAppointment.jsp">Assign Appointment Date</a>
                       	<a class="collapse-item" href="../PatientFiles/DoctorComment.jsp">Doctor Comment</a>
                    </div>
                </div>
            </li>
           
          

           
           
             <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Reception Part</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header ">Patient</h6>
                         <a class="collapse-item" href="../PatientAandReg/Registration.jsp">Register Patient</a>
                        <a class="collapse-item" href="../PatientFiles/PrimaryFile.jsp">Create Primary File</a>
                        <a class="collapse-item" href="../PatientAandReg/ViewAppointment2.jsp">View Appointment</a>
                        <a class="collapse-item" href="../PatientAandReg/ViewRegistration.jsp">View Registration</a>
                       <a class="collapse-item" href="../PatientFiles/ViewPrimaryFile.jsp">View PrimaryFile</a>
                       
                    </div>
                </div>
            </li>
          
            <!-- End Reception Task for Patients -->

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Addons
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <!-- Laboratory Issues -->
             
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Laboratory Part</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">PatientFiles:</h6>
                         <a class="collapse-item" href="../PatientFiles/ViewPrimaryFile.jsp">View PrimaryFile</a>
                        <a class="collapse-item" href="../PatientFiles/ProgressFile.jsp">Create Progress File</a>
                         <a class="collapse-item" href="../PatientFiles/ViewProgressFile.jsp">View Progress File</a>
                       
                    </div>
                </div>
            </li>
            
			  <!--End  Laboratory Issues -->
            <!-- Nav Item - Charts -->
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOnes"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Pharmacy</span></a>
                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Pharmacy Issues:</h6>
                        <a class="collapse-item" href="">View Doctor Comment</a>
                        <a class="collapse-item" href="ViewPayment.jsp">View Appointment Bill</a>
                       <a class="collapse-item" href="">Assign Medicine </a>
                        
                        </div>
                        </div>
                        
            </li>
           
           
			
           
</ul>

           
           
            

            

        
            

           
            
           

           

            
            

            
           

           

           
          

       
        