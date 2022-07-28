package Payment;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;








public class PaymentDao {
	public static Connection myconn() {
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/project2022","root","");
			System.out.print("Connected");
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			}
		return con;
		
	}public void Add(PaymentModel e){   
		Connection con=myconn();
		
		try{
			PreparedStatement ps=con.prepareStatement("INSERT INTO `appointmentpayment`(`appointmentId`, `patientId`, `mtandao`, `paymentcode`,  `Status`) VALUES (?,?,?,?,?)");
			ps.setInt(1,e.getApointmentid());
			ps.setString(2, e.getPatientid());;
			ps.setString(3, e.getMtandao());
			ps.setString(4,e.getPaymentcode());
		
			ps.setString(5, e.getStatus());
			int rowsUpdated=ps.executeUpdate();
			if(rowsUpdated>0) {
			System.out.println("AppointmentPayment Added successful ");
		            
		    }
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
	}
	public static List <PaymentModel> ViewAll(){
		 Connection con=myconn();
		 PaymentModel modl;
		 List <PaymentModel> d=new ArrayList<>();
		 try {
		Statement st=con.createStatement();
		ResultSet rst=st.executeQuery("SELECT * FROM `appointmentpayment`");
		while(rst.next()) {
			int appointmentId=rst.getInt("appointmentId");
			String patientid=rst.getString("patientId");
			String mtandao=rst.getString("mtandao");
			String paymentcode=rst.getString("paymentcode");
			String status=rst.getString("Status");
			modl=new PaymentModel(patientid,paymentcode, mtandao,status,appointmentId);
			d.add(modl);
		}
	}catch(SQLException ex) {
		ex.printStackTrace();
	}
		return d;
		
	}
	public static PaymentModel PaymentById(int i) {
		 Connection con=myconn();
		 PaymentModel modl=null;
		 try {
				
				String query="SELECT * FROM appointmentpayment WHERE appointmentId=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setInt(1, i);
				ResultSet rst=ps.executeQuery();
				if(rst.next()) {
					int appointmentId=rst.getInt("appointmentId");
					String patientid=rst.getString("patientId");
					String mtandao=rst.getString("mtandao");
					String paymentcode=rst.getString("paymentcode");
					String status=rst.getString("Status");
					modl=new PaymentModel(patientid,paymentcode, mtandao,status,appointmentId);

					}
					
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
		return modl;
		
		
		
	}	

}
