  package PatientAppandReg;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class UpdateRegistration
 */
@WebServlet("/UpdateRegistration")
public class UpdateRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateRegistration() {
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

		String id=request.getParameter("patientId");
		String fname=request.getParameter("FirstName");
		String lname=request.getParameter("LastName");
		String email=request.getParameter("Email");
		String password=request.getParameter("password");
		String address=request.getParameter("Address");
		int contact_no=Integer.parseInt(request.getParameter("Contact"));
		Date dob=Date.valueOf(request.getParameter("Date_of_birth"));
		PatientModel mc=new PatientModel(fname,lname,email,password,address,contact_no,id,dob);
		System.out.print(id);
		PatientDao lc=new PatientDao();
		lc.update(mc);
		response.sendRedirect("PatientAandReg/ViewRegistration.jsp");
	}

}
