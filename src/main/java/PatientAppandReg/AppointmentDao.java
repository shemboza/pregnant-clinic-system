  package PatientAppandReg;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;



public class AppointmentDao {
	public static  Connection myconn(){
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/project2022","root","");
			
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			
		}
		
		return con;
		
		
	}
	public void Add(AppointmentModel e){   
		Connection con=myconn();
		
		try{
			PreparedStatement ps=con.prepareStatement("INSERT INTO `appointmenttable`( `PatientId`, `appointmentDate`, `appointmentreason`) VALUES (?,?,?)");
			ps.setString(3,e.getAppointment_reason());
			ps.setDate(2, e.getDate());
			ps.setString(1, e.getPatientId());
		
			int rowsUpdated=ps.executeUpdate();
			if(rowsUpdated>0) {
			
		            
		    }
		}catch(SQLException ex) {
			ex.printStackTrace();
	
		}
	}

	public static List <AppointmentModel> ViewAll(){
	 Connection con=myconn();
	 AppointmentModel modl;
	 List <AppointmentModel> d=new ArrayList<>();
	 try {
	Statement st=con.createStatement();
	ResultSet rst=st.executeQuery("SELECT * FROM `appointmenttable`");
	while(rst.next()) {
		
		int appointmentId=rst.getInt("appointmentId");
		String patientid=rst.getString("patientId");
		String reason=rst.getString("appointmentreason");
		Date appointmentdate=rst.getDate("appointmentDate");
		modl=new AppointmentModel(appointmentId,appointmentdate,patientid,reason);
		d.add(modl);
	}
}catch(SQLException ex) {
	ex.printStackTrace();
}
	return d; 
	
}
	public int update(AppointmentModel dol) {
		 int s=0;
		 try {
			 Connection con=myconn();
			 PreparedStatement ps=con.prepareStatement("UPDATE `appointmenttable` SET appointmentDate=? WHERE appointmentId=?");
			 ps.setDate(1, dol.getDate());
			 
			 //ps.setString(2,"NULL");
			
			 ps.setInt(2, dol.getId());
			 
			 s=ps.executeUpdate();
			 
		 }catch(Exception e) {
			 System.out.print(e);
		 }
		return s;
	 }
	public int delete(int i) {
		 int pss=0;
		 try {
			 Connection con=myconn();
			 PreparedStatement ps=con.prepareStatement("DELETE FROM appointmenttable WHERE appointmentId=?");
			 ps.setInt(1, i);
			 pss=ps.executeUpdate();
			 
		 }catch(Exception e) {
			 System.out.print(e);
		 }
		return pss;
	 }public static AppointmentModel SellById(int i) {
		 Connection con=myconn();
		 AppointmentModel modl=null;
		 try {
				
				String query="SELECT * FROM `appointmenttable` WHERE  appointmentId=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setInt(1, i);
				ResultSet rst=ps.executeQuery();
				if(rst.next()) {
					int appointmentId=rst.getInt("appointmentId");
					String patientid=rst.getString("patientId");
					Date appointmentdate=rst.getDate("appointmentDate");
					String reason=rst.getString("appointmentreason");
					modl=new  AppointmentModel(appointmentId,appointmentdate,patientid,reason);
					
					
					}
					
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
		return modl;
		 
		 
	 }public static AppointmentModel GetByPatientId(String i){
		 Connection con=myconn();
		 AppointmentModel modl = new AppointmentModel();
		 try {
			 String query="SELECT * FROM `appointmenttable` WHERE  patientId=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, i);
				ResultSet rst=ps.executeQuery();
		while(rst.next()) {
			
			int appointmentId=rst.getInt("appointmentId");
			String patientid=rst.getString("patientId");
			String reason=rst.getString("appointmentreason");
			Date appointmentdate=rst.getDate("appointmentDate");
			modl=new AppointmentModel(appointmentId,appointmentdate,patientid,reason);
			
		}
	}catch(SQLException ex) {
		ex.printStackTrace();
	}
		return modl;
		
	}
		

}
