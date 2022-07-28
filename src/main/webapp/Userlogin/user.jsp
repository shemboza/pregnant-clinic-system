<%@page import ="LoginUser.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
<script type="text/javascript">

function validate(email){
	var mailformat=/^([A-Za-z0-9])+\@([A-Za-z0-9])/;
	if(email.value.match(mailformat)){
		document.form1.text1.focus();
		return true;
	}else{
		 alert("invalid email address.");
		 document.form1.text1.focus();
		 return false;
	}
}     

</script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> </title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    

</head>

<body>

    <div class="container">

        <!-- Outer Row --> 
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5"> 
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-3 d-none d-lg-block "></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                    </div>
                                    <form class="user" name="form1" action="../SelectServletlogin" method="post" autocomplete="off">
                                    
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                id="email" aria-describedby="emailHelp" name="email"
                                                placeholder="Enter Email Address..." >
                                                <span id="emails" class="text-danger font-italic font-weight-body"></span>
                                              
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="Password"  name="pass">
                                        </div>
                                       
                                        
                                        <div class="form-group">
                                        <input type="submit" class="btn btn-primary btn-user btn-block"  onclick=" validate(document.form1.email)" value="Login Now">
                                        </div>
                                       
                                    </form>
                                   
                                    <div class="text-center">
                                         <a class="small" href="../PatientAandReg/reg.jsp">Create an Account!</a>
                                    </div>
                                 
                                   <div class="text-center">
                                        	
                                            <%if(request.getSession().getAttribute("error1")!=null){
                                            	System.out.print(request.getSession().getAttribute("error1"));
                                            	 out.println("<span style='color:red;'><i class='fas fa-exclamation-cicle'>"
                                                         + request.getSession().getAttribute("error1")+"</span>");}
                                           
                                        request.getSession().setAttribute("error1", null);
                                        request.getSession().setAttribute("succesful", null);
                                        %>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
  
										 
										
										

</body>

</html>
