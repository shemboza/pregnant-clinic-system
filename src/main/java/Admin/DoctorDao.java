package Admin;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




public class DoctorDao {
	public static  Connection myconn(){
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/clinicsystem","root","");
			System.out.print("Connected");
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			
		}
		return con;
		
		
	}
	public static DoctorModel Login(String email,String password){   
		Connection con=myconn();
		DoctorModel model=null;
		try {
			String query = "SELECT * FROM `admin` ` WHERE Email=? and password=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				model=new DoctorModel();
				model.setFirstname(rs.getString("First_name"));
				model.setLastname(rs.getString("Last_name"));
				model.setEmail(rs.getString("Email"));
				model.setPassword(rs.getString("Password"));
				model.setContact(rs.getInt("Contact_number"));
				model.setDob(rs.getDate("Date_of_birth"));
				}
				
			}catch(Exception e) {
			e.printStackTrace();
	}
		return model;	
	
	}
}
