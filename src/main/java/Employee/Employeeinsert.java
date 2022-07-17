
package Employee;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import PatientAppandReg.Encryption;


/**
 * Servlet implementation class Employeeinsert
 */
@WebServlet("/Employeeinsert")
public class Employeeinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employeeinsert() {
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
		EmployeeModel model=new EmployeeModel();
		EmployeeDao dao=new EmployeeDao();
		UserModel md=new UserModel();
		model.setEmployee_Id(request.getParameter("Employee_Id"));
		model.setName(request.getParameter("Name")); 
		model.setEmail(request.getParameter("Email"));
		
		model.setGender(request.getParameter("Gender"));
		model.setProfessional_status(request.getParameter("Professional_status"));
		model.setContact_number(Integer.parseInt(request.getParameter("Contact_number")));
		dao.Add(model);
		md.setEmail(request.getParameter("Email"));
		String ecrypass = Encryption.getEcriptedpass(request.getParameter("Email"));
		md.setPassword(ecrypass);
		
		md.setName(request.getParameter("Name"));
		md.setRole(request.getParameter("Professional_status"));
		md.setIdentity(request.getParameter("Employee_Id"));
		
		dao.User(md);
		response.sendRedirect("Admin/ViewEmployees.jsp");
		
		
	
	}

}
