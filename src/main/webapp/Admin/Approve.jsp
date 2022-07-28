<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="Payment.*,java.util.*" %>
     <%
if(session.getAttribute("doctor")==null){
	response.sendRedirect("../Userlogin/user.jsp");
}
%>
<% response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
	response.addHeader("Pragma", "no-cache");
	response.addDateHeader("Expires", 0);
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<% int pid=Integer.parseInt(request.getParameter("statusid"));

PaymentModel modl = PaymentDao.PaymentById(pid);
System.out.print(modl.getApointmentid());
%>
<div id="wrapper">

       
        <div id="content-wrapper" class="d-flex flex-column">

           
            <div id="content"> 

                
                <div class="container-fluid">

                   
                 

                   

                        
                        </div>

                     
</div>
                    <!-- END DETAILS TO BE VIEWED IN ADMIN PAGE -->
                       
                             
                               
                      

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="container justify-content-center">
                        <table class="table table-bordered">
                        <tbody>
                        <tr>
						<td colspan=4 class="title" style="border: 1px solid black;">APPOINTMENT PAYMENT RECEIPT :</td>
						</tr>
						<tr>
						<th><%=modl.getPatientid() %></th>
						<td rowspan=4><img src="../PatientAandReg/Images/<%=modl.getPaymentcode()%>"></td>
						</tr>
						<tr>
						<th><%=modl.getMtandao() %></th>
						</tr>
                        </tbody>
                         
                        </table>

                        

                           
                           

                        </div>

                        <div class="col-lg-6 mb-4">

                           

                        </div>
                    </div>

                </div>
                </div>
                
                
                <!-- /.container-fluid -->


  
  
<script type="text/javascript">


function myFunction() {
	  var input, filter, table, tr, td, i;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable");
	  var rows = table.getElementsByTagName("tr");
	  for (i = 0; i < rows.length; i++) {
	    var cells = rows[i].getElementsByTagName("td");
	    var j;
	    var rowContainsFilter = false;
	    for (j = 0; j < cells.length; j++) {
	      if (cells[j]) {
	        if (cells[j].innerHTML.toUpperCase().indexOf(filter) > -1) {
	          rowContainsFilter = true;
	          continue;
	        }
	      }
	    }

	    if (! rowContainsFilter) {
	      rows[i].style.display = "none";
	    } else {
	      rows[i].style.display = "";
	    }
	  }
	}




</script>					
				
                

</body>
</html>




