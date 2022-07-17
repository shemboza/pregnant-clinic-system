<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="LoginUser.*,java.util.List,PatientFiles.*" %>
<!DOCTYPE html>

<head>
 <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
<% 
    List<ProgressFileModel> modl = ProgressDao.SeAll();
	String i=request.getParameter("id");
    ProgressFileModel model=ProgressDao.SellById(i);
    System.out.print(model.getAttendancedate());

%>

 <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-3 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Attendance file</h1>
                            </div>
                            <form class="user" action="../UpdateProgress" method="post">
                                <div class="form-group row ">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <select class="form-control" id="Filenumber" name="Filenumber">
                                              <% for(ProgressFileModel mod:modl){ %>
                                             <option value=<%=mod.getFileno() %>><%=mod.getFileno() %></option>
                                             <% } %>
                                             </select>
                                            
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="date" class="form-control form-control-user"
                                            id="AttendanceDate" placeholder="AttendanceDate" name="AttendanceDate" value="<%= model.getAttendancedate() %>">
                                     </div>
                                    
                                </div>
                                 <div class="form-group row">
                                   
                                   
                                    
                                  </div>
                                <div class="form-group">
                                    <input type="number" class="form-control form-control-user" id="BodyKg"
                                        placeholder="Kg" name="bodykg" value=<%=model.getBodykg() %>>
                                </div>
                               
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="number" class="form-control form-control-user"
                                            id="Bloodpressure" placeholder="Bloodpressure" name="Bloodpressure" value=<%=model.getBloodpressure() %>>
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user"
                                            id="Urine" placeholder="Urine" name="Urine" value=<%=model.getUrine() %>>
                                     </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="number" class="form-control form-control-user"
                                            id="Lengthofpregnantperweek" placeholder="Lengthofpregnantperweek" name="Lengthofpregnantperweek" value=<%=model.getLengthofpregnantperweek() %>>
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="number" class="form-control form-control-user"
                                            id="heightofpregnantperweek" placeholder="heightofpregnantperweek" name="heightofpregnantperweek" value=<%=model.getHeightofpregnant() %>>
                                     </div>
                                </div>
                                 <div class="form-group">
                                    <select class="form-control" id="childplay" name="childplay" value=<%=model.getKidplay() %>>
									    	<option>Yes kid play</option>
									    	<option>No kid not play</option>
									    </select>
                                </div>
                                 
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                         <select class="form-control" id="heartbeatperweek" name="heartbeatperweek" value=<%=model.getHeatbeat() %>>
									    	<option>Yes heart beat</option>
									    	<option>No kid not play</option>
									    </select>
                                    </div>
                                     <div class="col-sm-6">
                                         <select class="form-control" id="swollenfeet" name="swollenfeet" value=<%=model.getSwollenlegs() %>>
									    	<option>Yes swollen feet</option>
									    	<option>No swollen feet</option>
									    </select>
                                     </div>
                                </div>
                                 <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="Sulphur"
                                        placeholder="Sulphur" name="Sulphur" value=<%=model.getSulphur() %>>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user"
                                            id="Previouspregnacy" placeholder="Dozzperweek" name="Dozzperweek" value=<%=model.getDozperweek() %>>
                                    </div>
                                     <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user"
                                            id="Pepopunda" placeholder="Pepopunda" name="Pepopunda" value=<%=model.getPepopunda() %>>
                                     </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <select class="form-control" id="DangerousSign" name="DangerousSign" <%=model.getDangersign() %>>
									    	<option>Yes danger Sign</option>
									    	<option>No danger Sign</option>
									    </select>
                                    </div>
                                     <div class="col-sm-6">
                                     <select class="form-control" id="BirthControl" name="BirthControl" value=<%=model.getBirthcontrol() %>>
									    	<option>Yes birth control</option>
									    	<option>No birth control</option>
									    </select>
                                        
                                     </div>
                                </div>
                                <div class="form-group row">
                          			<div class="col-sm-6">
                                        <select class="form-control" id="birthPreparation" name="birthPreparation" value=<%=model.getBirthpreparation() %>>
									    	<option>yes birth preparation </option>
									    	<option>No birth preparation</option>
									    </select>
                                     </div>
                                     <div class="col-sm-6">
                                     <select class="form-control" id="PMTCT_ART" name="PMTCT_ART" value=<%=model.getPmtct() %>>
									    	<option>0</option>
									    	<option>1</option>
									    	<option>2</option>
									    </select>
                                     </div>
                                  </div>
                                  <div class="form-group row">
                          			<div class="col-sm-6">
                                        <select class="form-control " id="exampleRepeatPassword" name="balancediet_advice" value=<%=model.getBalancediet() %>>
									    	<option>Yes  advice balance_diet</option>
									    	<option>No advice balance_diet</option>
									    </select>
                                     </div>
                                    
                                     <div class="col-sm-6">
                                    <input type="date" class="form-control form-control-user" id="DateToBeBack"
                                        placeholder="DateToBeBack" name="DateToBeBack" value=<%=model.getDatetobeback() %>>
                                </div>
                                </div>
                                    
                                
                                  <div class="form-group row">
                          			<div class="col-sm-6">
                                     <input type="text" class="form-control form-control-user"
                                            id="Professional signature" placeholder="Professionalsignature" name="Professionalsignature" value=<%=model.getProffessionalname() %>>
                                     </div>
                                      <div class="col-sm-6">
                                      <input type="text" class="form-control form-control-user"
                                            id="Professionalsignature" placeholder="position" name="Professionalposition" value=<%=model.getProffposition() %>>
                                     </div>
                                  </div>
                                  
                                     
                                
                                  
                                
                               
                             <input type="submit" class="btn btn-primary btn-user btn-block" value="Create progress File">
                                
                                
                            </form>
                           
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


</body>
</html>