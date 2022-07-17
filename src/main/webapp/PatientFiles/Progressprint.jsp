<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="PatientFiles.*,java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid black;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
h2,h3{
    color: blue;
    font-family: verdana;
    font-size: 150%;
    text-align: center;
}
</style>
</head>
<% 


List <ProgressFileModel> file=ProgressDao.Mprintie(request.getParameter("id"));

%>
<body>
<h2 >ATTENDANCE RECORD</h2>
<h3>CHECK ALL ATTENDANCE AND REFER HER TO A HEALTH FACILITY IF THE LEVEL IS ABOVE THE BRACKET</h3>
<table>
<tr>
 <td>FILE NUMBER:</td>
<td></td>
</tr></table>



<table class="table table-striped">
						<thead >
						    <tr>
						     
						     <th scope="col">INFORMATION</th>
						     
						     <th colspan="9">PROGRESS</th>
						      
						    </tr>
						  </thead>
						  <tbody>
						  
						  <tr>
						  
						  <th scope="col">TODAY DATE</th>
						  <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getAttendancedate() %></td>
						  <%} %>
						  
						  </tr>
						  <tr>
						  
						  <th scope="col">BLOOD PRESSURE</th>
						  <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getBloodpressure() %></td>
						  <%} %>
						  
						  </tr>
						  <tr>
						  
						   <th scope="col">URINE</th>
						   <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getUrine() %></td>
						  <%} %>
						  
						  </tr>
						     <tr>
						  
						   <th scope="col">LENGTH OF PREGNANT</th>
						    <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getLengthofpregnantperweek() %></td>
						 <%} %>
						  </tr>
						   <tr>
						  <th scope="col">HEIGHT OF PREGNANT</th>
						   <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getHeightofpregnant() %></td>
						 <%} %>
						  
						  </tr>
						   <tr>
						  
						  <th scope="col">CHILD PRAY</th>
						   <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getKidplay() %></td>
						  <%} %>
						  
						  </tr>
						   <tr>
						  
						  <th scope="col">HEART BEAT PER WEEK</th>
						   <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getHeatbeat() %></td>
						 <%} %>
						  </tr>
						   <tr>
						  
						  <th scope="col">SWOLLEN FEET</th>
						   <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getSwollenlegs() %></td>
						  <%} %>
						  
						  </tr>
						   <tr>
						  
						   <th scope="col">SULPHUR</th>
						    <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getSulphur() %></td>
						 <%} %>
						  
						  </tr>
						   <tr>
						  
						   <th scope="col">DOZZ PER WEEK</th>
						    <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getDozperweek() %></td>
						  <%} %>
						  
						  </tr>
						   <tr>
						  
						   <th scope="col">PEPOPUNDA</th>
						    <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getPepopunda() %></td>
						  <%} %>
						  
						  </tr>
						   <tr>
						  
						  <th scope="col">DANGERSIGN</th>
						   <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getDangersign() %></td>
						  <%} %>
						  
						  </tr>
						   <tr>
						  
						  <th scope="col">BIRTH CONTROL</th>
						   <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getBirthcontrol() %></td>
						  <%} %>
						  
						  </tr>
						   <tr>
						  
						   <th scope="col">BIRTH PREPARATION</th>
						    <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getBirthpreparation() %></td>
						  <%} %>
						  
						  </tr>
						   <tr>
						  
						   <th scope="col">PMTCT_ART</th>
						    <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getPmtct() %></td>
						  <%} %>
						  
						  </tr>
						   <tr>
						  
						  <th scope="col">BALANCEDIET</th>
						   <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getBalancediet() %></td>
						  <%} %>
						  </tr>
						  <tr>
						  
						  <th scope="col">DATE TO BE BACK</th>
						   <% for(ProgressFileModel mod:file){ %>
						  <td><%=mod.getDatetobeback() %></td>
						  <%} %>
						  
						  
						  
						  </tr>
					</tbody>
						  
</table>
<table>
<tr>
<td>PROPHESSIONAL NAME:</td>
<td></td>



<td>PROPHESSIONAL POSITION:</td>
<td></td>




</tr>

</table>



<script>
	window.print();
</script>

</body>
</html>