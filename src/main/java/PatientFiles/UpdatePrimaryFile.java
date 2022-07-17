package PatientFiles;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdatePrimaryFile
 */
@WebServlet("/UpdatePrimaryFile")
public class UpdatePrimaryFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePrimaryFile() {
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
		String clinicname=request.getParameter("clinicname");
		String patientid=request.getParameter("patientId");
		int patientage=Integer.parseInt(request.getParameter("patientage"));
		String ageabove18=request.getParameter("ageabove18");
		String patientname=request.getParameter("patientName");
		String husbandname=request.getParameter("husbandname");
		int husbandage=Integer.parseInt(request.getParameter("husbandage"));
		String husbandjob=request.getParameter("husbandjob");
		String patientjob=request.getParameter("patientjob");
		String husbandedulevel=request.getParameter("husbandedulevel");
		int pregnantnumber=Integer.parseInt(request.getParameter("pregnantnumber"));
		int previouspregnant=Integer.parseInt(request.getParameter("previouspregnant"));
		int childsurvive=Integer.parseInt(request.getParameter("childrensurvive"));
		String streetname=request.getParameter("streetname");
		String chairpersonname=request.getParameter("chairpersonname");
		Date menstrualdate=Date.valueOf(request.getParameter("lastmenstrualdate"));
		Date birthdate=Date.valueOf(request.getParameter("birthdate"));
		String pregdestmore2=request.getParameter("pregdestrmorethan2");
		String operation=request.getParameter("operation");
		String diabetes=request.getParameter("diabetes");
		String heartdisease=request.getParameter("heartdisease");
		String tb=request.getParameter("tb");
		String bloodgroup=request.getParameter("bloodgroup");
		String rh=request.getParameter("rh");
		String vdrlprp=request.getParameter("vdrlrpr");
		String mrdt=request.getParameter("mrdt");
		String fileno=request.getParameter("fileno");
		String signature=request.getParameter("signature");
		PrimaryFileModel modl=new PrimaryFileModel(clinicname,patientid,ageabove18,patientname,husbandname,husbandjob,patientjob,husbandedulevel,streetname,chairpersonname,pregdestmore2,operation,diabetes,heartdisease,tb,bloodgroup,rh,vdrlprp,mrdt,fileno,signature,patientage,husbandage,pregnantnumber,previouspregnant,childsurvive, menstrualdate,birthdate);
		PrimaryFileDao mc=new PrimaryFileDao();
		mc.update(modl);
		response.sendRedirect("../PatientFiles/ViewPrimaryFile.jsp");
	}
	

}
