package PatientFiles;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProgressServlet
 */
@WebServlet("/ProgressServlet")
public class ProgressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProgressServlet() {
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
		ProgressDao dao=new ProgressDao();
		ProgressFileModel model=new ProgressFileModel();
		model.setFileno(request.getParameter("Filenumber"));
		model.setAttendancedate(Date.valueOf(request.getParameter("AttendanceDate")));
		model.setBodykg(Integer.parseInt(request.getParameter("bodykg")));
		model.setBloodpressure(Integer.parseInt(request.getParameter("Bloodpressure")));
		model.setUrine(request.getParameter("Urine"));
		model.setLengthofpregnantperweek(Integer.parseInt(request.getParameter("Lengthofpregnantperweek")));
		model.setHeightofpregnant(Integer.parseInt(request.getParameter("heightofpregnantperweek")));
		model.setKidplay(request.getParameter("childplay"));
		model.setHeatbeat(request.getParameter("heartbeatperweek"));
		model.setSwollenlegs(request.getParameter("swollenfeet"));
		model.setSulphur(request.getParameter("Sulphur"));
		model.setDozperweek(request.getParameter("Dozzperweek"));
		model.setPepopunda(request.getParameter("Pepopunda"));
		model.setDangersign(request.getParameter("DangerousSign"));
		model.setBirthcontrol(request.getParameter("BirthControl"));
		model.setBirthpreparation(request.getParameter("birthPreparation"));
		model.setPmtct(request.getParameter("PMTCT_ART"));
		model.setBalancediet(request.getParameter("balancediet_advice"));
		model.setDatetobeback(Date.valueOf(request.getParameter("DateToBeBack")));
		model.setProffessionalname(request.getParameter("Professionalsignature"));
		model.setProffposition(request.getParameter("Professionalposition"));
		dao.Add(model);
	}

}
