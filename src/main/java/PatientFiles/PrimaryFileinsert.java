package PatientFiles;

import java.io.IOException;


import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





/**
 * Servlet implementation class PrimaryFileinsert
 */
@WebServlet("/PrimaryFileinsert")
public class PrimaryFileinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrimaryFileinsert() {
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
		String number =String.valueOf((int)Math.floor(Math.random()*(1000-100)+100)); 
		String FID = "FILE-"+number;
		
		
		
	
		
		
		PrimaryFileModel  mod=new PrimaryFileModel();
		PrimaryFileDao dao=new PrimaryFileDao();
		mod.setClinicname(request.getParameter("ClinicName"));
		mod.setPatientid(request.getParameter("PatientId"));
		mod.setPatientage(Integer.parseInt(request.getParameter("PatientAge")));
		mod.setAgeabove18(request.getParameter("option"));
		mod.setPatientname(request.getParameter("PatientName"));
		mod.setHusbandname(request.getParameter("HusbandName"));
		mod.setHusbandage(Integer.parseInt(request.getParameter("HusbandAge")));
		mod.setPatientjob(request.getParameter("Patientjob"));
		mod.setHusbandjob(request.getParameter("HusbandJob"));
		mod.setHusbedulevel(request.getParameter("HusbandEducationLevel"));
		mod.setPregnantnumber(Integer.parseInt(request.getParameter("Pregnantnumber")));
		mod.setPreviouspregnant(Integer.parseInt(request.getParameter("Previouspregnacy")));
		mod.setChildrensurvive(Integer.parseInt(request.getParameter("Childrennumbersurvive")));
		mod.setStreetname(request.getParameter("StreetName"));
		mod.setChairpersonname(request.getParameter("ChairpersonName"));
		mod.setLastmenstruationdate(Date.valueOf(request.getParameter("Lastmenstruationperiod")));
		mod.setBirthdate(Date.valueOf(request.getParameter("Birthdateexpected")));
		mod.setDestroyedmore2preg(request.getParameter("Pregnantdestroyed"));
		mod.setOperation(request.getParameter("birthbyOperational"));
		mod.setDiabetes(request.getParameter("diabetes"));
		mod.setHeartdisease(request.getParameter("heartdisease"));
		mod.setTb(request.getParameter("TB"));
		mod.setBloodgroup(request.getParameter("Bloodgroup"));
		mod.setRh(request.getParameter("RH"));
		mod.setVdrlrpr(request.getParameter("VDRLRPR"));
		mod.setMrdt(request.getParameter("MRDT"));
		mod.setFileno(FID);
		mod.setSignature(request.getParameter("Professionalsignature"));
		dao.Add(mod);
		response.sendRedirect("PatientFiles/ViewPrimaryFile.jsp");
	}

}
