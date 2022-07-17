 package LoginUser;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;






public class LoginDao {
	public static  Connection myconn(){
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/project2022","root","");
			System.out.print("Connected");
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			}
		return con;
	}
	public static LoginModel SeAll(String username,String password){
		 Connection con=myconn();
		 LoginModel modl = new LoginModel();
		 try {
		
		
		PreparedStatement ps=con.prepareStatement("select * from users where Email=? and Password=?");
		ps.setString(1, username);
		ps.setString(2, password);
		ResultSet rs=ps.executeQuery();
		 while(rs.next()) {
			String id=rs.getString("IDENTITY");
			String email=rs.getString("Email");
			String passwrd=rs.getString("Password");
			String name=rs.getString("username");
			String role=rs.getString("Role");
			
			modl=new LoginModel(email,passwrd,role,name,id);
			
		}

		 }catch(SQLException ex) {
				ex.printStackTrace();
			}
		return modl;
		
	}
	
				
			
			
		
	

}
