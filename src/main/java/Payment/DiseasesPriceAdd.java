package Payment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DiseasesPriceAdd
 */
@WebServlet("/DiseasesPriceAdd")
public class DiseasesPriceAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DiseasesPriceAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**I
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
		DiseasesPrice model=new  DiseasesPrice();
		DiseasesPriceDao dao=new DiseasesPriceDao();
		model.setBlood(Integer.parseInt(request.getParameter("Blood")));
		model.setRh(Integer.parseInt(request.getParameter("RH")));
		model.setVdrprp(Integer.parseInt(request.getParameter("Vdruprp")));
		model.setMrdt(Integer.parseInt(request.getParameter("Mrdt")));
		model.setPressure(Integer.parseInt(request.getParameter("Pressure")));
		model.setUrine(Integer.parseInt(request.getParameter("Urine")));
		model.setDeabetes(Integer.parseInt(request.getParameter("Malaria")));
		model.setTb(Integer.parseInt(request.getParameter("TB")));
		model.setBloodkilo(Integer.parseInt(request.getParameter("BodyKilo")));
		dao.Add(model);
	}

}
