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

import Employee.UserModel;



public class PatientDao {
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
	public void Add(PatientModel e){   
		Connection con=myconn();
		
		try{
			PreparedStatement ps=con.prepareStatement("INSERT INTO `registration`(`patientId`, `FirstName`, `LastName`, `Email`, `Password`, `Address`, `Contact_number`, `Date`) VALUES (?,?,?,?,?,?,?,?)");
			ps.setString(2, e.getFname());
			ps.setString(3,e.getLname());
			ps.setString(4,e.getEmail());
			ps.setString(5, e.getPassword());
			ps.setString(6,e.getAddress());
			ps.setInt(7, e.getContact_number());
			ps.setDate(8, e.getDob());
			ps.setString(1,e.getId());
			int rowsUpdated=ps.executeUpdate();
			if(rowsUpdated>0) {
			System.out.println("patient inserted successful ");
		            
		    }
		}catch(SQLException ex) {
			ex.printStackTrace();
	
		}
	}
	public static List <PatientModel> SeAll(){
		 Connection con=myconn();
		 PatientModel modl;
		 List <PatientModel> d=new ArrayList<>();
		 try {
		Statement st=con.createStatement();
		ResultSet rst=st.executeQuery("SELECT * FROM `registration`");
		while(rst.next()) {
			String firstname=rst.getString("FirstName");
			String lname=rst.getString("LastName");
			String email=rst.getString("Email");
			String password=rst.getString("Password");
			String address=rst.getString("Address");
			int contact_no=rst.getInt("Contact_number");
			String id=rst.getString("patientId");
			Date dob=rst.getDate("Date");
			modl=new PatientModel(firstname,lname,email,password,address,contact_no,id,dob);
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
			System.out.println("User successful added");
		            
		    }
		}catch(SQLException ex) {
			ex.printStackTrace();
	
		}
	}
	public int update(PatientModel dol) {
		 int s=0;
		 try {
			 Connection con=myconn();
			 PreparedStatement ps=con.prepareStatement("UPDATE registration SET FirstName=?,LastName=?,Email=?,Password=?,Address=?,Contact_number=?,Date=? WHERE patientId=?");
			 ps.setString(1, dol.getFname());
			 ps.setString(2,dol.getLname());
			 ps.setString(3, dol.getEmail());
			 ps.setString(4, dol.getPassword());
			 ps.setString(5, dol.getAddress());
			 ps.setInt(6, dol.getContact_number());
			 ps.setDate(7, dol.getDob());
			 ps.setString(8, dol.getId());
			 s=ps.executeUpdate();
			 System.out.print(dol.getDob());
		 }catch(Exception e) {
			 System.out.print(e);
		 }
		return s;
	 }
	public int delete(String i) {
		 int pss=0;
		 try {
			 Connection con=myconn();
			 PreparedStatement ps=con.prepareStatement("DELETE FROM `registration` WHERE patientId=?");
			 ps.setString(1, i);
			 pss=ps.executeUpdate();
			 
		 }catch(Exception e) {
			 System.out.print(e);
		 }
		return pss;
	 }public static PatientModel SellById(String i) {
		 Connection con=myconn();
		 PatientModel modl=null;
		 try {
				
				String query="SELECT * FROM registration WHERE patientId=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, i);
				ResultSet rst=ps.executeQuery();
				if(rst.next()) {
					String firstname=rst.getString("FirstName");
					String lname=rst.getString("LastName");
					String email=rst.getString("Email");
					String password=rst.getString("Password");
					String address=rst.getString("Address");
					int contact_no=rst.getInt("Contact_number");
					String id=rst.getString("patientId");
					Date dob=rst.getDate("Date");
					modl=new PatientModel(firstname,lname,email,password,address,contact_no,id,dob);
					System.out.print(modl.getContact_number());
					}
					
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
		return modl;
		 
		 
	 }
	/* public Integer GetllById() throws SQLException {
		 int count=0;
		
		
		
		 try {
			 	Connection con=myconn();
				String query="SELECT count(*) FROM registration WHERE patientId=count";
				PreparedStatement ps=con.prepareStatement(query);
				
				ResultSet rst=ps.executeQuery();
				while(rst.next()) {
					count=Integer.parseInt(rst.getString("patientId"));
					
			
					
					}
					
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
		return count;
		}*/
	

}
