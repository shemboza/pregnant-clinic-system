package DoctorComment;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class Commentdao {
	public static Connection mycon() {
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/project2022","root","");
			System.out.print("Database of comment connected");
		}catch(SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	public void Add(CommentModel e){   
		Connection con=mycon();
		
		try{
			PreparedStatement ps=con.prepareStatement("INSERT INTO `doctorcomment`(`patientId`, `Patientname`, `Filenumber`, `doctorcomment`, `doctorname`, `doctorsignature`) VALUES (?,?,?,?,?,?)");
			ps.setString(1,e.getPatientId());
			ps.setString(2, e.getPatientname());
			ps.setString(3, e.getFilenumber());
			ps.setString(4, e.getComment());
			ps.setString(5, e.getDoctorname());
			ps.setString(6, e.getSign());
			int rowsUpdated=ps.executeUpdate();
			if(rowsUpdated>0) {
			System.out.println("Appointment inserted successful");
		            
		    }
		}catch(SQLException ex) {
			ex.printStackTrace();
	}
	}
}
