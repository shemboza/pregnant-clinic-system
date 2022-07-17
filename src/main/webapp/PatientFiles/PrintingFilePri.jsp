<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="PatientFiles.*,java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

 <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
 <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
 <style type="text/css">
 h1 h2 h3{
    color: black;
    text-align: center;
}
 
 </style>
</head>
<% 
PrimaryFileModel mod=PrimaryFileDao.SellById(request.getParameter("id")); 
System.out.print(mod.getChairpersonname());
%>
<body>
 

            
					<h1 class="text-center">THIS CARD NOT FOR SALE</h1>  
<h2 class="text-center">United Republic Of Tanzania</h2>
<h3  class="text-center">Minister Of Health and Development of </h3>
<h2 class="text-center">PREGNANT CLINIC CARD</h2>
<table class="table table-striped" style="width:100%">
<thead>
	<tr>
	<th>CLINIC NAME: <%=mod.getClinicname() %></th>
	<th>FILE NUMBER:<%=mod.getFileno() %></th>
	<th>PATIENT NAME:<%=mod.getPatientid() %></th>
	</tr>
	<tr>
	<th>PARTIENT AGE: <%=mod.getPatientage() %></th>
	<th>AGE STATUS:<%=mod.getAgeabove18() %></th>
	<th>PATIENT JOB:<%=mod.getPatientjob() %></th>
	</tr>
</thead>
<thead>
<tr>
<th>HUSBAND NAME:<%=mod.getHusbandname() %></th>
<th>HUSBAND AGE:<%=mod.getHusbandage() %></th>
<th>HUSBAND JOB:<%=mod.getHusbandjob() %></th>
<th>HUSBAND EDUCATION LEVEL:<%=mod.getHusbedulevel() %></th>
</tr>
</thead> 
<thead>
<tr>
<th colspan="2">CHAIRPERSON NAME:<%=mod.getChairpersonname() %></th>
<th colspan="2">STREET NAME:<%=mod.getStreetname() %></th>
</tr>
</thead> 
<thead>
<tr>
<td colspan="4">INFORMATION ABOUT PREVIOUS PREGNANT</td>
</tr>
<tr>
<th>CURRENT PREGNANT:<%=mod.getPregnantnumber() %></th>
<th>PREVIOUS PREGNANT/S:<%=mod.getPreviouspregnant() %></th>
<th colspan="2">CHILDREN SURVIVE:<%=mod.getChildrensurvive() %></th>
</tr>
</thead>


<thead>
<tr>
<th colspan="4">THE LAST MONTH OF MAINSTRATION PERIOD:<%=mod.getLastmenstruationdate() %></th>
<th colspan="4">EXPECTATION BIRTH DATE:<%=mod.getBirthdate() %></th>
</tr>
</thead>
<thead>
<tr>
<td colspan="4">CHUNGUZA TAARIFA ZIFUATAZO KWA MAMA AJAPO KWA MARA YA KWANZA</td>
</tr>
<tr>
<th>A<th>
<th colspan="4">WEKA ALAMA YA KUKUBALI AU KUKATAA PANAPOHUSIKA,MPELEKE KITUO CHA AFYA/HOSPITALI KWA UCHUNGUZI ZAID<th>
</tr>
<tr>
<th>HEART DISEASE:<%=mod.getHeartdisease() %></th>
<th>DEABATES:<%=mod.getDiabetes() %></th>
<th>TUBERCULOSIS:<%=mod.getTb() %></th>
<th colspan="4">DESTRUCTION OF MORE THAN 2 PREGNANTS:<%=mod.getDestroyedmore2preg() %></th>
</tr>
<tr>
<th>B<th>
<th colspan="4">WEKA ALAMA YA KUKUBALI AU KUKATAA PANAPOHUSIKA,MSHAURI AENDE KITUO CHA AFYA/HOSPITALI KWA KUJIFUNGUA ENDAPO KAMA ANA:<th>
</tr>
<tr>
<th colspan="4">PREVIOUS PREGNANT MADE BY OPERATION:<%=mod.getOperation() %></th>
</tr>

<tr>
<th colspan="4">SPECIAL LABORATORY CHECKING</th>
</tr>
<tr>
<th colspan="2">BLOOD GROUP:<%=mod.getBloodgroup() %></th>
<th colspan="2">RH:<%=mod.getRh() %></th>
<th colspan="2">VDRURPR:<%=mod.getVdrlrpr() %></th>
<th colspan="2">MRDT:<%=mod.getMrdt() %></th>
</tr>
</thead>
<tr>
<td colspan="4">PROFESSIONAL SIGNATURE:<%=mod.getSignature() %></td>
</tr>

</table>
					      
					
                   


<script>
	window.print();
</script>
</body>
</html>