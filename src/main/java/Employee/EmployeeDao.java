package Employee;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class EmployeeDao {
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
		public void Add(EmployeeModel e){   
			Connection con=myconn();
			
			try{
				 
			
				PreparedStatement ps=con.prepareStatement("INSERT INTO `employeedetail`(`Employee_Id`, `Name`, `Email`,  `Gender`, `Professional_status`, `Contact_number`) VALUES (?,?,?,?,?,?)");
				ps.setString(1, e.getEmployee_Id());
				ps.setString(2,e.getName());
				ps.setString(3,e.getEmail());
				
				ps.setString(4, e.getGender());
				ps.setString(5,e.getProfessional_status());
				ps.setInt(6, e.getContact_number());
				int rowsUpdated=ps.executeUpdate();
				if(rowsUpdated>0) {
				
			            
			    }
			}catch(SQLException ex) {
				ex.printStackTrace();
		
			}
		}
		public static List <EmployeeModel> SeAll(){
			 Connection con=myconn();
			 EmployeeModel modl;
			 List <EmployeeModel> d=new ArrayList<>();
			 try {
			Statement st=con.createStatement();
			ResultSet rst=st.executeQuery("SELECT * FROM `employeedetail`");
			while(rst.next()) {
				
				String employeeid=rst.getString("Employee_Id");
				String fullname=rst.getString("Name");
				String email=rst.getString("Email");
				
				String gender=rst.getString("Gender");
				String status=rst.getString("Professional_status");
				int contact=rst.getInt("Contact_number");
				
				
				
				
				
				modl=new EmployeeModel(contact,fullname,email,gender,status,employeeid);
				d.add(modl);
				
			}

			 }catch(SQLException ex) {
					ex.printStackTrace();
					
				}
			return d;
			
		}
		public void User(UserModel e){   
			Connection con=myconn();
			
			try{
				 
			
				PreparedStatement ps=con.prepareStatement("INSERT INTO `users`( `Email`, `Password`, `Role`, `IDENTITY`, `username`) VALUES (?,?,?,?,?)");
				ps.setString(1, e.getEmail());
				ps.setString(2,e.getPassword());
				ps.setString(3,e.getRole());
				ps.setString(4, e.getIdentity());
				ps.setString(5, e.getName());
				
				int rowsUpdated=ps.executeUpdate();
				if(rowsUpdated>0) {
				
			            
			    }
			}catch(SQLException ex) {
				ex.printStackTrace();
		
			}
		}
		public int update(EmployeeModel dol) {
			 int s=0;
			 try {
				 Connection con=myconn();
				 PreparedStatement ps=con.prepareStatement("UPDATE `employeedetail` SET Name=?,Email=?,Gender=?,Professional_status=?,Contact_number=?  WHERE Employee_Id=?");
				 
				 ps.setString(1, dol.getName());
				 ps.setString(2,dol.getEmail());
				 ps.setString(3, dol.getGender());
				
				 ps.setString(4, dol.getProfessional_status());
				 ps.setInt(5, dol.getContact_number());
				 ps.setString(6, dol.getEmployee_Id());
				
				 s=ps.executeUpdate();
				 
			 }catch(Exception e) {
				 System.out.print(e);
			 }
			return s;
		 }
		public int delete(String i) {
			 int pss=0;
			 try {
				 Connection con=myconn();
				 PreparedStatement ps=con.prepareStatement("DELETE FROM `employeedetail` WHERE Employee_Id=?");
				 ps.setString(1, i);
				 pss=ps.executeUpdate();
				 
			 }catch(Exception e) {
				 System.out.print(e);
			 }
			return pss;
		 }public static EmployeeModel SellById(String i) {
			 Connection con=myconn();
			 EmployeeModel modl=null;
			 try {
					
					String query="SELECT * FROM `employeedetail` WHERE Employee_Id =?";
					PreparedStatement ps=con.prepareStatement(query);
					ps.setString(1, i);
					ResultSet rst=ps.executeQuery();
					
					
					if(rst.next()) {
						String employeeid=rst.getString("Employee_Id");
						String fullname=rst.getString("Name");
						String email=rst.getString("Email");
						
						String gender=rst.getString("Gender");
						String status=rst.getString("Professional_status");
						int contact=rst.getInt("Contact_number");
						modl=new EmployeeModel(contact,fullname,email,gender,status,employeeid);
						
					}
						
				 
			 }catch(SQLException e) {
				 e.printStackTrace();
			 }
			return modl;
			 
			 
		 }
}
