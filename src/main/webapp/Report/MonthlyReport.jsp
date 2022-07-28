<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="PatientFiles.*,Payment.*,java.util.*,PatientAppandReg.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    

    
<style type="text/css">
h2{
    color: blue;
    font-family: French Script MT;
    font-size:300%;
    text-align: center;
    
}
h3{
 font-family:Castellar;
 font-size:150%;
 margin-top:5px;
 text-align: center;
 }
 h5{
 font-family:Castellar;
 font-size:150%;
 margin-top:5px;
 text-align: center;
 }
.table1 {
	margin-left:30px;
    font-family: arial, sans-serif;
    border-collapse: collapse;
   	border:none;
   	
   	
}

.title {
	 
	text-align: left;
	padding: 8px;
}
.table2{
	margin-top:20px;
    font-family: arial, sans-serif;
    border-collapse: collapse;
   	border:none;
   	margin-left:30px;
   	width:90%;
}

.table2  {
    border: 1px solid black;
   
   
}
p{
margin-left: 5%;
margin-top: 60px;
font-family: French Script MT;
font-size:150%;   
}   


</style>
</head>

<% 
DiseasesPrice mod=DiseasesPriceDao.AllMagonjwa();
System.out.print(mod.getId());
%>

<body> 
<% PatientModel model=PatientDao.SellById(request.getParameter("id")); %>
<%ProgressFileModel md=ProgressDao.SellBypatientId(request.getParameter("id")); %>
<h2>Cost Report</h2>

<h3>HOPE CLINIC CENTER</h3>

<table class="table1">
<tr>
<th class="title">PATIENT FIRST NAME:</th>
<td><%=model.getFname() %></td>
</tr>
<tr>
<th class="title">PATIENT LAST NAME:</th>
<td><%=model.getLname() %></td>
</tr>
<tr>
<th class="title">PATIENT ADDRESS:</th>
<td><%=model.getAddress() %></td>
</tr>
<tr>
<th class="title">ATTENDING DATE:</th>
<td><%=md.getAttendancedate() %></td>
</tr>
<tr>
<th class="title">DATE TO BE BACK:</th>
<td><%=md.getDatetobeback() %></td>
</tr>
</table>
<table class="table2">
<tr>
<th style="border: 1px solid black;">PARTICULAR</th>
<th style="border: 1px solid black;width:40%">COST</th>
</tr>
<tr>
<td class="title" style="border: 1px solid black;">BLOOD:</td>
<td class="title" style="border: 1px solid black;"><%=mod.getBlood() %></td>
</tr>
<tr>
<td class="title" style="border: 1px solid black;" >RH:</td>
<td class="title" style="border: 1px solid black;"><%=mod.getRh() %></td>

</tr>
<tr>
<td class="title" style="border: 1px solid black;">VDRURPR:</td>
<td class="title" style="border: 1px solid black;"><%=mod.getVdrprp() %></td>

</tr>
<tr>
<td class="title" style="border: 1px solid black;">MRDT:</td>
<td class="title" style="border: 1px solid black;"><%=mod.getMrdt() %></td>
</tr>
<tr>
<td class="title" style="border: 1px solid black;">BLOOD PRESSURE:</td>
<td class="title" style="border: 1px solid black;"><%=mod.getPressure() %></td>

</tr>
<tr>
<td class="title" style="border: 1px solid black;" >URINE:</td>
<td class="title" style="border: 1px solid black;"><%=mod.getUrine() %></td>

</tr>
<tr>
<td class="title" style="border: 1px solid black;">MALARIA:</td>
<td class="title" style="border: 1px solid black;"><%=mod.getDeabetes() %></td>

</tr>
<tr>
<td class="title" style="border: 1px solid black;">TUBERCLOSIS:</td>
<td class="title" style="border: 1px solid black;"><%=mod.getTb() %></td>

</tr>
<tr>
<td class="title" style="border: 1px solid black;">BODY KILOGRAM:</td>
<td class="title" style="border: 1px solid black;"><%=mod.getBloodkilo() %></td>

</tr>
<tr>
<td class="title" style="border: 1px solid black;">TOTAL COST:</td>
<td style="border: 1px solid black;"><%=mod.getTotal() %></td>

</tr>

</table>

<p>
			Doctor Name:............................         Doctor Signature:.............................

</p>




<script type="text/javascript">
	window.print();
</script>
</body>
</html>