package PatientFiles;

import java.sql.Connection;

import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class PrimaryFileDao {
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
	public void Add(PrimaryFileModel e){   
		Connection con=myconn();
		
		try{
			PreparedStatement ps=con.prepareStatement("INSERT INTO `primaryfile`(`clinicname`, `patientId`, `patientage`, `ageabove18`, `patientName`, `husbandname`, `husbandage`, `husbandjob`, `patientjob`, `husbandedulevel`, `pregnantnumber`, `previouspregnant`, `childrensurvive`, `streetname`, `chairpersonname`, `lastmenstrualdate`, `birthdate`, `pregdestrmorethan2`, `operation`, `diabetes`, `heartdisease`, `tb`, `bloodgroup`, `rh`, `vdrlrpr`, `mrdt`, `fileno`, `signature`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, e.getClinicname());
			ps.setString(2,e.getPatientid());
			ps.setInt(3, e.getPatientage());
			ps.setString(4,e.getAgeabove18());
			ps.setString(5, e.getPatientname());
			ps.setString(6,e.getHusbandname());
			ps.setInt(7, e.getHusbandage());
			ps.setString(8,e.getHusbandjob());
			ps.setString(9,e.getPatientjob());
			ps.setString(10,e.getHusbedulevel());
			ps.setInt(11, e.getPregnantnumber());
			ps.setInt(12, e.getPreviouspregnant());
			ps.setInt(13, e.getChildrensurvive());
			ps.setString(14,e.getStreetname());
			ps.setString(15,e.getChairpersonname());
			ps.setDate(16, e.getLastmenstruationdate());
			ps.setDate(17, e.getBirthdate());
			ps.setString(18,e.getDestroyedmore2preg());
			ps.setString(19,e.getOperation());
			ps.setString(20,e.getDiabetes());
			ps.setString(21,e.getHeartdisease());
			ps.setString(22,e.getTb());
			ps.setString(23,e.getBloodgroup());
			ps.setString(24,e.getRh());
			ps.setString(25,e.getVdrlrpr());
			ps.setString(26,e.getMrdt());
			ps.setString(27,e.getFileno());
			ps.setString(28,e.getSignature());
			int rowsUpdated=ps.executeUpdate();
			if(rowsUpdated>0) {
			System.out.println("Primary file completed successful ");
		            
		    }
		}catch(SQLException ex) {
			ex.printStackTrace();
	
		}
	}
	public static List <PrimaryFileModel> SeAll(){
		 Connection con=myconn();
		 PrimaryFileModel modl;
		 List <PrimaryFileModel> d=new ArrayList<>();
		 try {
		Statement st=con.createStatement();
		ResultSet rst=st.executeQuery("SELECT * FROM `primaryfile`");
		while(rst.next()) {
		
			 	
			String clinicname=rst.getString("clinicname");
			String patientid=rst.getString("patientId");
			int patientage=rst.getInt("patientage");
			String ageabove18=rst.getString("ageabove18");
			String patientname=rst.getString("patientName");
			String husbandname=rst.getString("husbandname");
			int husbandage=rst.getInt("husbandage");
			String husbandjob=rst.getString("husbandjob");
			String patientjob=rst.getString("patientjob");
			String husbandedulevel=rst.getString("husbandedulevel");
			int pregnantnumber=rst.getInt("pregnantnumber");
			int previouspregnant=rst.getInt("previouspregnant");
			int childsurvive=rst.getInt("childrensurvive");
			String streetname=rst.getString("streetname");
			String chairpersonname=rst.getString("chairpersonname");
			Date menstrualdate=rst.getDate("lastmenstrualdate");
			Date birthdate=rst.getDate("birthdate");
			String pregdestmore2=rst.getString("pregdestrmorethan2");
			String operation=rst.getString("operation");
			String diabetes=rst.getString("diabetes");
			String heartdisease=rst.getString("heartdisease");
			String tb=rst.getString("tb");
			String bloodgroup=rst.getString("bloodgroup");
			String rh=rst.getString("rh");
			String vdrlprp=rst.getString("vdrlrpr");
			String mrdt=rst.getString("mrdt");
			String fileno=rst.getString("fileno");
			String signature=rst.getString("signature");
			modl=new PrimaryFileModel(clinicname,patientid,ageabove18,patientname,husbandname,husbandjob,patientjob,husbandedulevel,streetname,chairpersonname,pregdestmore2,operation,diabetes,heartdisease,tb,bloodgroup,rh,vdrlprp,mrdt,fileno,signature,patientage,husbandage,pregnantnumber,previouspregnant,childsurvive, menstrualdate,birthdate);
			d.add(modl);
			
		}

		 }catch(SQLException ex) {
				ex.printStackTrace();
				
			}
		return d;
		
	}
	
	
	
	public int delete(String i) {
		 int pss=0;
		 try {
			 Connection con=myconn();
			 PreparedStatement ps=con.prepareStatement("DELETE FROM `primaryfile` WHERE fileno=?");
			 ps.setString(1, i);
			 pss=ps.executeUpdate();
			 
		 }catch(Exception e) {
			 System.out.print(e);
		 }
		return pss;
	 }
	public static PrimaryFileModel SellById(String i) {
		 Connection con=myconn();
		 PrimaryFileModel modl=null;
		 try {
				
				String query="SELECT * FROM `primaryfile` WHERE fileno=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, i);
				ResultSet rst=ps.executeQuery();
				
				
				if(rst.next()) {
					String clinicname=rst.getString("clinicname");
					String patientid=rst.getString("patientId");
					int patientage=rst.getInt("patientage");
					String ageabove18=rst.getString("ageabove18");
					String patientname=rst.getString("patientName");
					String husbandname=rst.getString("husbandname");
					int husbandage=rst.getInt("husbandage");
					String husbandjob=rst.getString("husbandjob");
					String patientjob=rst.getString("patientjob");
					String husbandedulevel=rst.getString("husbandedulevel");
					int pregnantnumber=rst.getInt("pregnantnumber");
					int previouspregnant=rst.getInt("previouspregnant");
					int childsurvive=rst.getInt("childrensurvive");
					String streetname=rst.getString("streetname");
					String chairpersonname=rst.getString("chairpersonname");
					Date menstrualdate=rst.getDate("lastmenstrualdate");
					Date birthdate=rst.getDate("birthdate");
					String pregdestmore2=rst.getString("pregdestrmorethan2");
					String operation=rst.getString("operation");
					String diabetes=rst.getString("diabetes");
					String heartdisease=rst.getString("heartdisease");
					String tb=rst.getString("tb");
					String bloodgroup=rst.getString("bloodgroup");
					String rh=rst.getString("rh");
					String vdrlprp=rst.getString("vdrlrpr");
					String mrdt=rst.getString("mrdt");
					String fileno=rst.getString("fileno");
					String signature=rst.getString("signature");
					modl=new PrimaryFileModel(clinicname,patientid,ageabove18,patientname,husbandname,husbandjob,patientjob,husbandedulevel,streetname,chairpersonname,pregdestmore2,operation,diabetes,heartdisease,tb,bloodgroup,rh,vdrlprp,mrdt,fileno,signature,patientage,husbandage,pregnantnumber,previouspregnant,childsurvive, menstrualdate,birthdate);
				
					System.out.print(modl.getFileno());
				}
					
			 
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
		return modl;
		 
		 
	 }public int update(PrimaryFileModel e) {
		 int s=0;
		 try {
			 Connection con=myconn();
			 PreparedStatement ps=con.prepareStatement("UPDATE `primaryfile` SET clinicname=?,patientId=?,patientage=?,ageabove18=?,patientName=?,husbandname=?,husbandage=?,husbandjob=?,patientjob=?,husbandedulevel=?,pregnantnumber=?,previouspregnant=?,childrensurvive=?,streetname=?,chairpersonname=?,lastmenstrualdate=?,birthdate=?,pregdestrmorethan2=?,operation=?,diabetes=?,heartdisease=?,tb=?bloodgroup=?,rh=?,vdrlrpr=?,mrdt=?,signature=? WHERE fileno=?");
			 ps.setString(1, e.getClinicname());
				ps.setString(2,e.getPatientid());
				ps.setInt(3, e.getPatientage());
				ps.setString(4,e.getAgeabove18());
				ps.setString(5, e.getPatientname());
				ps.setString(6,e.getHusbandname());
				ps.setInt(7, e.getHusbandage());
				ps.setString(8,e.getHusbandjob());
				ps.setString(9,e.getPatientjob());
				ps.setString(10,e.getHusbedulevel());
				ps.setInt(11, e.getPregnantnumber());
				ps.setInt(12, e.getPreviouspregnant());
				ps.setInt(13, e.getChildrensurvive());
				ps.setString(14,e.getStreetname());
				ps.setString(15,e.getChairpersonname());
				ps.setDate(16, e.getLastmenstruationdate());
				ps.setDate(17, e.getBirthdate());
				ps.setString(18,e.getDestroyedmore2preg());
				ps.setString(19,e.getOperation());
				ps.setString(20,e.getDiabetes());
				ps.setString(21,e.getHeartdisease());
				ps.setString(22,e.getTb());
				ps.setString(23,e.getBloodgroup());
				ps.setString(24,e.getRh());
				ps.setString(25,e.getVdrlrpr());
				ps.setString(26,e.getMrdt());
				ps.setString(27,e.getFileno());
				ps.setString(28,e.getSignature());
				s=ps.executeUpdate();
			 
		 }catch(Exception ex) {
			 System.out.print(ex);
		 }
		return s;
	 }

}
