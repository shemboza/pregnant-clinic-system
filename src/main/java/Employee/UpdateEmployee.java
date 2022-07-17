package Employee;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class UpdateEmployee
 */
@WebServlet("/UpdateEmployee")
public class UpdateEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEmployee() {
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
		String employeeId=request.getParameter("Employee_Id");
		String name=request.getParameter("Name");
		String email=request.getParameter("Email");
		String gender=request.getParameter("Gender");
		String professionalstatus=request.getParameter("Professional_status");
		int phoneno=Integer.parseInt(request.getParameter("Contact_number"));
		EmployeeModel mc=new EmployeeModel(phoneno,name,email,gender,professionalstatus,employeeId);
		EmployeeDao lc=new EmployeeDao();
		lc.update(mc);
		response.sendRedirect("Admin/ViewEmployees.jsp");
	}

}
