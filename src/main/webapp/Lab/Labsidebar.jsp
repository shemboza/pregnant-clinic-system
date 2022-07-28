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
                <div class="sidebar-brand-text mx-3">${laboratory.role }</div>
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
                <a class="nav-link collapsed" href="ViewPrimaryFile.jsp" >
                    <i class="fas fa-fw fa-cog"></i>
                    <span>View Primary File</span>
                </a>
                
      		 </li>
      		  <li class="nav-item">
                <a class="nav-link collapsed" href="ProgressFile.jsp" >
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Create Progress File</span>
                </a>
            </li>
            
          

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="ViewProgressFile.jsp" >
                    <i class="fas fa-fw fa-cog"></i>
                    <span>View Progress File</span>
                </a>
                
      		 </li>

            <!-- Nav Item - Utilities Collapse Menu -->
           
 		

        </ul>
        <!-- End of Sidebar -->