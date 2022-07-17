package PatientFiles;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateProgress
 */
@WebServlet("/UpdateProgress")
public class UpdateProgress extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProgress() {
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
		String urine=request.getParameter("urine");
		String kidplay=request.getParameter("childplay");
		String heatbeat=request.getParameter("heartbeatperweek");
		String swollenlegs=request.getParameter("swollenfeet");
		String sulphur=request.getParameter("Sulphur");
		String dozperweek=request.getParameter("Dozzperweek");
		String pepopunda=request.getParameter("Pepopunda");
		String dangersign=request.getParameter("DangerousSign");
		String birthcontrol=request.getParameter("BirthControl");
		String birthpreparation=request.getParameter("birthPreparation");
		String pmtct=request.getParameter("PMTCT_ART");
		String balancediet=request.getParameter("balancediet_advice");
		String proffessionalname=request.getParameter("Professionalsignature");
		String proffessional=request.getParameter("Professionalposition");
		String fileno=request.getParameter("Filenumber");
		Date attendancedate=Date.valueOf(request.getParameter("AttendanceDate"));
		Date datetobeback=Date.valueOf(request.getParameter("DateToBeBack"));
		int bodykg=Integer.parseInt(request.getParameter("bodykg"));
		int bloodpressure=Integer.parseInt(request.getParameter("Bloodpressure"));
		int lengthofpregnantperweek=Integer.parseInt(request.getParameter("Lengthofpregnantperweek"));
		int heightofpregnant=Integer.parseInt(request.getParameter("heightofpregnantperweek"));
		ProgressFileModel modl=new ProgressFileModel(urine,kidplay,heatbeat,swollenlegs,sulphur,dozperweek,pepopunda,dangersign,birthcontrol,birthpreparation,
				pmtct,balancediet,proffessionalname,proffessional,fileno,attendancedate,datetobeback,
				bodykg,bloodpressure,lengthofpregnantperweek,heightofpregnant);
	
		ProgressDao dao=new ProgressDao();
		dao.update(modl);
		response.sendRedirect("Admin/ViewProgressFile.jsp");
	}
	

}
