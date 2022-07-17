 package PatientAppandReg;

import java.io.IOException;



import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Employee.UserModel;


/**
 * Servlet implementation class Registrationinsert
 */
@WebServlet("/Registrationinsert")
public class Registrationinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registrationinsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String number =String.valueOf((int)Math.floor(Math.random()*(10000-100)+100)); 
		String PID = "PT-"+number;
		PatientModel model=new PatientModel();
		PatientDao dao=new PatientDao();
		UserModel md=new UserModel();
		model.setId(PID);
		model.setFname(request.getParameter("FirstName"));
		model.setLname(request.getParameter("LastName"));
		model.setEmail(request.getParameter("Email"));
		String ecrypas = Encryption.getEcriptedpass(request.getParameter("password"));
		model.setPassword(ecrypas);
		model.setAddress(request.getParameter("Address"));
		model.setContact_number(Integer.parseInt(request.getParameter("Contact")));
		model.setDob(Date.valueOf(request.getParameter("Date_of_birth")));
		dao.Add(model);
		md.setEmail(request.getParameter("Email"));
		String ecrypass = Encryption.getEcriptedpass(request.getParameter("password"));
		md.setPassword(ecrypass);
		md.setRole("PARTIENT");
		md.setIdentity(PID);
		md.setName(request.getParameter("FirstName"));
		dao.User(md);
		response.sendRedirect("Userlogin/user.jsp");
	}

}
