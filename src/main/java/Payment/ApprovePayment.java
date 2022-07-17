package Payment;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class ApprovePayment
 */
@WebServlet("/ApprovePayment")
public class ApprovePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApprovePayment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		try {
			int approvestatus=Integer.parseInt(request.getParameter("statusid"));
			PaymentModel model=new PaymentModel();
			model.setApointmentid(approvestatus);
			Connection conn=null;
			
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost/project2022","root","");
			PreparedStatement ps=conn.prepareStatement("SELECT Status FROM `appointmentpayment` where appointmentId='"+approvestatus+"'");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				if(rs.getString(1).equals("Not Confirmed")) {
					ps=conn.prepareStatement("UPDATE appointmentpayment SET Status='Confirmed' WHERE appointmentId='"+approvestatus+"'");
					ps.executeUpdate();
				}
			}if(approvestatus>0) {
				response.sendRedirect("Admin/ViewPayment.jsp");
			}else {
				response.sendRedirect("Admin/ViewPayment.jsp");
			}
		
		
		 }catch(ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

}
