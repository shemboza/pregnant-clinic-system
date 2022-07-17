package Payment;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;




public class DiseasesPriceDao {
	public static  Connection myconn(){
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/project2022","root","");
			System.out.print("Database Connected");
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			
		}
		
		return con;
	}public void Add(DiseasesPrice e){   
		Connection con=myconn();
		
		try{
			PreparedStatement ps=con.prepareStatement("INSERT INTO `diseaseprice`( `blood`, `rh`, `vdruppr`, `mrdt`, `bloodpressure`, `urine`, `malaria`, `tb`, `bodykilo`) VALUES (?,?,?,?,?,?,?,?,?)");
			
			ps.setInt(1,e.getBlood());
			ps.setInt(2,e.getRh());
			ps.setInt(3,e.getVdrprp());
			ps.setInt(4,e.getMrdt());
			ps.setInt(5,e.getPressure());
			ps.setInt(6,e.getUrine());
			ps.setInt(7,e.getDeabetes());
			ps.setInt(8,e.getTb());
			ps.setInt(9,e.getBloodkilo());
			int rowsUpdated=ps.executeUpdate();
			if(rowsUpdated>0) {
			System.out.println("Diseases Added successful ");
		            
		    }
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
	}
	
	
	
	public static  DiseasesPrice AllMagonjwa(){
		 Connection con=myconn();
		 DiseasesPrice  modl = new DiseasesPrice();
		
		 try {
		Statement st=con.createStatement();
		ResultSet rst=st.executeQuery("SELECT * FROM `diseaseprice`");
		while(rst.next()) { 
			int id=rst.getInt("Diseaseid");
			int blood=rst.getInt("blood");
			int rh=rst.getInt("rh");
			int vdruprp=rst.getInt("vdruppr");
			int mrdt=rst.getInt("mrdt");
			int pressure=rst.getInt("bloodpressure");
			int urine=rst.getInt("urine");
			int deabetes=rst.getInt("malaria");
			int tb=rst.getInt("tb");
			int bodykg=rst.getInt("bodykilo");
			
			modl=new DiseasesPrice(blood,rh,vdruprp,mrdt,pressure,urine,deabetes,tb,bodykg,id);
			
			
		}

		 }catch(SQLException ex) {
				ex.printStackTrace();
				
			}
		return modl;
	}
	public int delete(int i) {
		 int pss=0;
		 try {
			 Connection con=myconn();
			 PreparedStatement ps=con.prepareStatement("DELETE FROM `diseaseprice` where 	Diseaseid =?");
			 ps.setInt(1, i);
			 pss=ps.executeUpdate();
		}catch(Exception e) {
			 System.out.print(e);
		 }
		return pss;
	 }
	public static DiseasesPrice GetUgonjwaById(int i) {
		 Connection con=myconn();
		 DiseasesPrice modl=null;
		 try {
				String query="SELECT * FROM `diseaseprice` WHERE Diseaseid =? ";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setInt(1, i);
				ResultSet rst=ps.executeQuery();
				if(rst.next()) {
					int id=rst.getInt("Diseaseid");
					int blood=rst.getInt("blood");
					int rh=rst.getInt("rh");
					int vdruprp=rst.getInt("vdruppr");
					int mrdt=rst.getInt("mrdt");
					int pressure=rst.getInt("bloodpressure");
					int urine=rst.getInt("urine");
					int deabetes=rst.getInt("malaria");
					int tb=rst.getInt("tb");
					int bodykg=rst.getInt("bodykilo");
					
					modl=new DiseasesPrice(blood,rh,vdruprp,mrdt,pressure,urine,deabetes,tb,bodykg,id);
				
				}
					
			 
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
		return modl;
		 
		 
	 }
	public int update(DiseasesPrice e) {
		 int s=0;
		 try {
			 Connection con=myconn();
			 PreparedStatement ps=con.prepareStatement("UPDATE diseaseprice SET blood=?,rh=?,vdruppr=?,mrdt=?,bloodpressure=?,urine=?,malaria=?,tb=?,bodykilo=? WHERE Diseaseid=?");
			 ps.setInt(1,e.getBlood());
				ps.setInt(2,e.getRh());
				ps.setInt(3,e.getVdrprp());
				ps.setInt(4,e.getMrdt());
				ps.setInt(5,e.getPressure());
				ps.setInt(6,e.getUrine());
				ps.setInt(7,e.getDeabetes());
				ps.setInt(8,e.getTb());
				ps.setInt(9,e.getBloodkilo());
				
				s=ps.executeUpdate();
			 
		 }catch(Exception ex) {
			 System.out.print(ex);
		 }
		return s;
	 }
	
		

}
