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

public class ProgressDao {
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
	}public void Add(ProgressFileModel e){   
		Connection con=myconn();
		
		try{
			PreparedStatement ps=con.prepareStatement("INSERT INTO `progressfile`(patientId,`filenumber`, `attendanceDate`, `bodyKg`, `bloodpressure`, `urine`, `lengthofpregnant`, `heightofpregnant`, `childplay`, `heartbeat`, `swollenlegs`, `sulphur`, `dozperweek`, `pepopunda`, `dangersign`, `birthcontrol`, `birthpreparation`, `pmtct`, `balancediet`, `datetobeback`, `professionalname`, `professionalposition`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, e.getPatientid());
			ps.setString(2, e.getFileno());
			ps.setDate(3, e.getAttendancedate());
			ps.setInt(4,e.getBodykg());
			ps.setInt(5,e.getBloodpressure());
			ps.setString(6,e.getUrine());
			ps.setInt(7,e.getLengthofpregnantperweek());
			ps.setInt(8,e.getHeightofpregnant());
			ps.setString(9, e.getKidplay());
			ps.setString(10,e.getHeatbeat());
			ps.setString(11,e.getSwollenlegs());
			ps.setString(12,e.getSulphur());
			ps.setString(13,e.getDozperweek());
			ps.setString(14,e.getPepopunda());
			ps.setString(15,e.getDangersign());
			ps.setString(16, e.getBirthcontrol());
			ps.setString(17,e.getBirthpreparation());
			ps.setString(18,e.getPmtct());
			ps.setString(19,e.getBalancediet());
			ps.setDate(20, e.getDatetobeback());
			ps.setString(21,e.getProffessionalname());
			ps.setString(22,e.getProffposition());
			int rowsUpdated=ps.executeUpdate();
			if(rowsUpdated>0) {
			System.out.println("Progress file completed successful ");
		            
		    }
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
	}
	
	
	
	public static List <ProgressFileModel> SeAll(){
		 Connection con=myconn();
		 ProgressFileModel  modl;
		 List <ProgressFileModel> d=new ArrayList<>();
		 try {
		Statement st=con.createStatement();
		ResultSet rst=st.executeQuery("SELECT * FROM `progressfile`");
		while(rst.next()) { 
			String patientid=rst.getString("patientId");
			String urine=rst.getString("urine");
			String kidplay=rst.getString("childplay");
			String heatbeat=rst.getString("heartbeat");
			String swollenlegs=rst.getString("swollenlegs");
			String sulphur=rst.getString("sulphur");
			String dozperweek=rst.getString("dozperweek");
			String pepopunda=rst.getString("pepopunda");
			String dangersign=rst.getString("dangersign");
			String birthcontrol=rst.getString("birthcontrol");
			String birthpreparation=rst.getString("birthpreparation");
			String pmtct=rst.getString("pmtct");
			String balancediet=rst.getString("balancediet");
			String proffessionalname=rst.getString("professionalname");
			String proffessional=rst.getString("professionalposition");
			String fileno=rst.getString("filenumber");
			Date attendancedate=rst.getDate("attendanceDate");
			Date datetobeback=rst.getDate("datetobeback");
			int bodykg=rst.getInt("bodyKg");
			int bloodpressure=rst.getInt("bloodpressure");
			int lengthofpregnantperweek=rst.getInt("lengthofpregnant");
			int heightofpregnant=rst.getInt("heightofpregnant");
			modl=new ProgressFileModel(patientid,urine,kidplay,heatbeat,swollenlegs,sulphur,dozperweek,pepopunda,dangersign,birthcontrol,birthpreparation,
					pmtct,balancediet,proffessionalname,proffessional,fileno,attendancedate,datetobeback,
					bodykg,bloodpressure,lengthofpregnantperweek,heightofpregnant);
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
			 PreparedStatement ps=con.prepareStatement("DELETE FROM `progressfile` WHERE filenumber=?");
			 ps.setString(1, i);
			 pss=ps.executeUpdate();
		}catch(Exception e) {
			 System.out.print(e);
		 }
		return pss;
	 }
	public static ProgressFileModel SellById(String i) {
		 Connection con=myconn();
		 ProgressFileModel modl=null;
		 try {
				String query="SELECT * FROM `progressfile` WHERE filenumber=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, i);
				ResultSet rst=ps.executeQuery();
				if(rst.next()) {
					String patientid=rst.getString("patientId");
					String urine=rst.getString("urine");
					String kidplay=rst.getString("childplay");
					String heatbeat=rst.getString("heartbeat");
					String swollenlegs=rst.getString("swollenlegs");
					String sulphur=rst.getString("sulphur");
					String dozperweek=rst.getString("dozperweek");
					String pepopunda=rst.getString("pepopunda");
					String dangersign=rst.getString("dangersign");
					String birthcontrol=rst.getString("birthcontrol");
					String birthpreparation=rst.getString("birthpreparation");
					String pmtct=rst.getString("pmtct");
					String balancediet=rst.getString("balancediet");
					String proffessionalname=rst.getString("professionalname");
					String proffessional=rst.getString("professionalposition");
					String fileno=rst.getString("filenumber");
					Date attendancedate=rst.getDate("attendanceDate");
					Date datetobeback=rst.getDate("datetobeback");
					int bodykg=rst.getInt("bodyKg");
					int bloodpressure=rst.getInt("bloodpressure");
					int lengthofpregnantperweek=rst.getInt("lengthofpregnant");
					int heightofpregnant=rst.getInt("heightofpregnant");
					modl=new ProgressFileModel(patientid,urine,kidplay,heatbeat,swollenlegs,sulphur,dozperweek,pepopunda,dangersign,birthcontrol,birthpreparation,
							pmtct,balancediet,proffessionalname,proffessional,fileno,attendancedate,datetobeback,
							bodykg,bloodpressure,lengthofpregnantperweek,heightofpregnant);
				
					System.out.print(modl.getFileno());
				}
					
			 
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
		return modl;
		 
		 
	 }
	public static ProgressFileModel SellBypatientId(String i) {
		 Connection con=myconn();
		 ProgressFileModel modl=null;
		 try {
				String query="SELECT * FROM `progressfile` WHERE patientId=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, i);
				ResultSet rst=ps.executeQuery();
				if(rst.next()) {
					String patientid=rst.getString("patientId");
					String urine=rst.getString("urine");
					String kidplay=rst.getString("childplay");
					String heatbeat=rst.getString("heartbeat");
					String swollenlegs=rst.getString("swollenlegs");
					String sulphur=rst.getString("sulphur");
					String dozperweek=rst.getString("dozperweek");
					String pepopunda=rst.getString("pepopunda");
					String dangersign=rst.getString("dangersign");
					String birthcontrol=rst.getString("birthcontrol");
					String birthpreparation=rst.getString("birthpreparation");
					String pmtct=rst.getString("pmtct");
					String balancediet=rst.getString("balancediet");
					String proffessionalname=rst.getString("professionalname");
					String proffessional=rst.getString("professionalposition");
					String fileno=rst.getString("filenumber");
					Date attendancedate=rst.getDate("attendanceDate");
					Date datetobeback=rst.getDate("datetobeback");
					int bodykg=rst.getInt("bodyKg");
					int bloodpressure=rst.getInt("bloodpressure");
					int lengthofpregnantperweek=rst.getInt("lengthofpregnant");
					int heightofpregnant=rst.getInt("heightofpregnant");
					modl=new ProgressFileModel(patientid,urine,kidplay,heatbeat,swollenlegs,sulphur,dozperweek,pepopunda,dangersign,birthcontrol,birthpreparation,
							pmtct,balancediet,proffessionalname,proffessional,fileno,attendancedate,datetobeback,
							bodykg,bloodpressure,lengthofpregnantperweek,heightofpregnant);
				
					System.out.print(modl.getFileno());
				}
					
			 
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
		return modl;
		}
	public static List<ProgressFileModel> Mprintie(String n){
		 Connection con=myconn();
		 ProgressFileModel  modl =new ProgressFileModel();
		 List <ProgressFileModel> d=new ArrayList<>();
		 try {
			 String query="SELECT * FROM `progressfile` WHERE filenumber=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, n);
				ResultSet rst=ps.executeQuery();
		while(rst.next()) { 	
			String urine=rst.getString("urine");
			String kidplay=rst.getString("childplay");
			String heatbeat=rst.getString("heartbeat");
			String swollenlegs=rst.getString("swollenlegs");
			String sulphur=rst.getString("sulphur");
			String dozperweek=rst.getString("dozperweek");
			String pepopunda=rst.getString("pepopunda");
			String dangersign=rst.getString("dangersign");
			String birthcontrol=rst.getString("birthcontrol");
			String birthpreparation=rst.getString("birthpreparation");
			String pmtct=rst.getString("pmtct");
			String balancediet=rst.getString("balancediet");
			String proffessionalname=rst.getString("professionalname");
			String proffessional=rst.getString("professionalposition");
			String fileno=rst.getString("filenumber");
			Date attendancedate=rst.getDate("attendanceDate");
			Date datetobeback=rst.getDate("datetobeback");
			int bodykg=rst.getInt("bodyKg");
			int bloodpressure=rst.getInt("bloodpressure");
			int lengthofpregnantperweek=rst.getInt("lengthofpregnant");
			int heightofpregnant=rst.getInt("heightofpregnant");
			modl=new ProgressFileModel(urine,kidplay,heatbeat,swollenlegs,sulphur,dozperweek,pepopunda,dangersign,birthcontrol,birthpreparation,
					pmtct,balancediet,proffessionalname,proffessional,fileno,attendancedate,datetobeback,
					bodykg,bloodpressure,lengthofpregnantperweek,heightofpregnant);
			d.add(modl);
			
		}

		 }catch(SQLException ex) {
				ex.printStackTrace();
				
			}
		return d;
	}
	
	public int update(ProgressFileModel e) {
		 int s=0;
		 try {
			 Connection con=myconn();
			 PreparedStatement ps=con.prepareStatement("UPDATE progressfile SET attendanceDate=?,bodyKg=?,bloodpressure=?,urine=?,lengthofpregnant=?,heightofpregnant=?,childplay=?,heartbeat=?,swollenlegs=?,sulphur=?,dozperweek=?,pepopunda=?,dangersign=?,birthcontrol=?,birthpreparation=?,pmtct=?,balancediet=?,datetobeback=?,professionalname=?,professionalposition=? WHERE filenumber=?");
			 ps.setString(1, e.getFileno());
				ps.setDate(2, e.getAttendancedate());
				ps.setDouble(3,e.getBodykg());
				ps.setDouble(4,e.getBloodpressure());
				ps.setString(5,e.getUrine());
				ps.setDouble(6,e.getLengthofpregnantperweek());
				ps.setDouble(7,e.getHeightofpregnant());
				ps.setString(8, e.getKidplay());
				ps.setString(9,e.getHeatbeat());
				ps.setString(10,e.getSwollenlegs());
				ps.setString(11,e.getSulphur());
				ps.setString(12,e.getDozperweek());
				ps.setString(13,e.getPepopunda());
				ps.setString(14,e.getDangersign());
				ps.setString(15, e.getBirthcontrol());
				ps.setString(16,e.getBirthpreparation());
				ps.setString(17,e.getPmtct());
				ps.setString(18,e.getBalancediet());
				ps.setDate(19, e.getDatetobeback());
				ps.setString(20,e.getProffessionalname());
				ps.setString(21,e.getProffposition());
				s=ps.executeUpdate();
			 
		 }catch(Exception ex) {
			 System.out.print(ex);
		 }
		return s;
	 }
	
		


}
