<%@ page import="LoginUser.*" %>
<!-- Sidebar -->
<%@ page import="PatientAppandReg.*,java.util.*" %>



<!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" >
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">${reception.role }</div>
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
            <li class="nav-item">
                <a class="nav-link collapsed" href="Registration.jsp" >
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Registration Form</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="PrimaryFile.jsp" >
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Create Primary File</span>
                </a>
                
      		 </li>
            
          

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="ViewPrimaryFileLab.jsp" >
                    <i class="fas fa-fw fa-cog"></i>
                    <span>View Primary File</span>
                </a>
                
      		 </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="ViewRegistration.jsp" >
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>View Registration</span>
                </a>
            </li>
 		<!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="../PatientAandReg/ViewAppointment2.jsp">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>View Appointment</span></a>
            </li>
        

        </ul>
        <!-- End of Sidebar -->