package PatientAppandReg;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import LoginUser.LoginModel;

/**
 * Servlet implementation class AppointmentServlet
 */
@WebServlet("/AppointmentServlet")
public class AppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppointmentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		/*int r = Integer.parseInt(request.getParameter("id"));
		int dis = new  AppointmentDao().delete(r);
		response.sendRedirect("./PatientAandReg/PatientViewAppointment.jsp");*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		HttpSession session= request.getSession();
		LoginModel log=new LoginModel();
		log=(LoginModel)session.getAttribute("patient");
		System.out.print(log.getPatientId());
		AppointmentModel mod=new AppointmentModel();
		AppointmentDao dao=new AppointmentDao();
		mod.setPatientId(log.getPatientId());
		mod.setAppointment_reason(request.getParameter("message"));
		
		dao.Add(mod);
		response.sendRedirect("./PatientAandReg/index.jsp");
	}

}
