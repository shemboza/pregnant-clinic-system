package LoginUser;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import PatientAppandReg.Encryption;



/**
 * Servlet implementation class SelectServletlogin
 */
@WebServlet("/SelectServletlogin")
public class SelectServletlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectServletlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//response.getWriter().append("Served at: ./Userlogin/user.jsp").append(request.getContextPath());
		//response.sendRedirect("");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		/*
		
		HttpSession session=request.getSession();
		LoginModel re=LoginDao.SeAll(request.getParameter("email"),Encryption.getEcriptedpass(request.getParameter("pass")));
		session.setAttribute("user", re);
		if(re==null) {
			response.sendRedirect("./Userlogin/user.jsp");
		}else{
			session.setAttribute("user", re);
			
			String user = re.getNameorig();
			System.out.print(user);
			if(re.getRole().equals("PARTIENT")) {
				response.sendRedirect("./PatientAandReg/index.jsp");	
			
			}else {
				response.sendRedirect("./Admin/index.jsp");
				
			}
			
		}
	
		
		
	}*/
		
		
		if(request.getParameter("email").isEmpty() != true && request.getParameter("pass").isEmpty() != true) {
			String email=request.getParameter("email");
			String password=Encryption.getEcriptedpass(request.getParameter("pass"));
			LoginModel re=LoginDao.SeAll(email,password);
			
			if(re !=null) {
				HttpSession session=request.getSession();
				if(re.getRole() ==null) {
					request.getSession().setAttribute("error1", "Wrong username or password");
					response.sendRedirect("./Userlogin/user.jsp");
				}
				else if(re.getRole().equalsIgnoreCase("PARTIENT")) {
					session.setAttribute("patient", re);
					
					response.sendRedirect("./PatientAandReg/index.jsp");
				}else if(re.getRole().equalsIgnoreCase("DOCTOR")) {
					session.setAttribute("doctor", re);
					response.sendRedirect("./Admin/index.jsp");
				}else if(re.getRole().equalsIgnoreCase("LABORATORY")) {
					session.setAttribute("laboratory", re);
					response.sendRedirect("./Lab/LabDash.jsp");
					
				}else if(re.getRole().equalsIgnoreCase("RECEPTION")) {
					session.setAttribute("reception", re);
					response.sendRedirect("./Dashboards/Redashboard.jsp");
				}else if(re.getRole().equalsIgnoreCase("PHARMACY")) {
					session.setAttribute("pharmacy", re);
					response.sendRedirect("./Dashboards/Pharmacy.jsp");
				}else {
					request.getSession().setAttribute("error", "Wrong username or password");
					response.sendRedirect("./Userlogin/user.jsp");
				}
			}else {
				
				request.getSession().setAttribute("error", "Wrong username or password");
				response.sendRedirect("./Userlogin/user.jsp");
				
			}
			
		}else {
			response.sendRedirect("./Userlogin/user.jsp");
		}
		
	}
		


}
