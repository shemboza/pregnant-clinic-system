package Payment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class paymentServlet
 */
@WebServlet("/paymentServlet")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 1, //1 MB
		maxFileSize = 1024 * 1024 * 10, //10MB
		maxRequestSize = 1024 * 1024 * 100 //100MB
		)

public class paymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public paymentServlet() {
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
		
		PaymentDao dao=new PaymentDao();
		PaymentModel model=new PaymentModel();
		Part filePart = request.getPart("myreceipt");
		String receiptname=filePart.getSubmittedFileName();
		for(Part prt:request.getParts()) {
			prt.write("C:\\Users\\NASRA YAHYA\\eclipse-workspace\\PROJECT2022\\src\\main\\webapp\\PatientAandReg\\Images\\"+ receiptname);
		}
		model.setApointmentid(Integer.parseInt(request.getParameter("appid")));
		model.setPatientid(request.getParameter("patientid"));
		model.setMtandao(request.getParameter("patientname"));
		model.setPaymentcode(receiptname);
		
		dao.Add(model);
		response.sendRedirect("PatientAandReg/index.jsp");
	}

}
