package PatientFiles;

import java.sql.Date;

public class ProgressFileModel {
	String patientid,urine,kidplay,heatbeat,swollenlegs,sulphur,dozperweek,pepopunda,
	dangersign,birthcontrol,birthpreparation,pmtct,balancediet,proffessionalname,proffposition,fileno;
	Date attendancedate,datetobeback;
	int bodykg,bloodpressure,lengthofpregnantperweek,heightofpregnant;

	public ProgressFileModel(String urine, String kidplay, String heatbeat, String swollenlegs, String sulphur,
			String dozperweek, String pepopunda, String dangersign, String birthcontrol, String birthpreparation,
			 String pmtct, String balancediet, String proffessionalname,
			String proffposition, String fileno, Date attendancedate, Date datetobeback, int  bodykg,
			int  bloodpressure, int  lengthofpregnantperweek, int  heightofpregnant) {
		super();
		this.urine = urine;
		this.kidplay = kidplay;
		this.heatbeat = heatbeat;
		this.swollenlegs = swollenlegs;
		this.sulphur = sulphur;
		this.dozperweek = dozperweek;
		this.pepopunda = pepopunda;
		this.dangersign = dangersign;
		this.birthcontrol = birthcontrol;
		this.birthpreparation = birthpreparation;
		
		this.pmtct = pmtct;
		this.balancediet = balancediet;
		this.proffessionalname = proffessionalname;
		this.proffposition = proffposition;
		this.fileno = fileno;
		this.attendancedate = attendancedate;
		this.datetobeback = datetobeback;
		this.bodykg = bodykg;
		this.bloodpressure = bloodpressure;
		this.lengthofpregnantperweek = lengthofpregnantperweek;
		this.heightofpregnant = heightofpregnant;
	}
	public ProgressFileModel() {
		super();
	}
	
	
	public ProgressFileModel(String patientid, String urine, String kidplay, String heatbeat, String swollenlegs,
			String sulphur, String dozperweek, String pepopunda, String dangersign, String birthcontrol,
			String birthpreparation, String pmtct, String balancediet, String proffessionalname, String proffposition,
			String fileno, Date attendancedate, Date datetobeback, int bodykg, int bloodpressure,
			int lengthofpregnantperweek, int heightofpregnant) {
		super();
		this.patientid = patientid;
		this.urine = urine;
		this.kidplay = kidplay;
		this.heatbeat = heatbeat;
		this.swollenlegs = swollenlegs;
		this.sulphur = sulphur;
		this.dozperweek = dozperweek;
		this.pepopunda = pepopunda;
		this.dangersign = dangersign;
		this.birthcontrol = birthcontrol;
		this.birthpreparation = birthpreparation;
		this.pmtct = pmtct;
		this.balancediet = balancediet;
		this.proffessionalname = proffessionalname;
		this.proffposition = proffposition;
		this.fileno = fileno;
		this.attendancedate = attendancedate;
		this.datetobeback = datetobeback;
		this.bodykg = bodykg;
		this.bloodpressure = bloodpressure;
		this.lengthofpregnantperweek = lengthofpregnantperweek;
		this.heightofpregnant = heightofpregnant;
	}
	
	public String getPatientid() {
		return patientid;
	}
	public void setPatientid(String patientid) {
		this.patientid = patientid;
	}
	public String getUrine() {
		return urine;
	}
	public void setUrine(String urine) {
		this.urine = urine;
	}
	public String getKidplay() {
		return kidplay;
	}
	public void setKidplay(String kidplay) {
		this.kidplay = kidplay;
	}
	public String getHeatbeat() {
		return heatbeat;
	}
	public void setHeatbeat(String heatbeat) {
		this.heatbeat = heatbeat;
	}
	public String getSwollenlegs() {
		return swollenlegs;
	}
	public void setSwollenlegs(String swollenlegs) {
		this.swollenlegs = swollenlegs;
	}
	public String getSulphur() {
		return sulphur;
	}
	public void setSulphur(String sulphur) {
		this.sulphur = sulphur;
	}
	public String getDozperweek() {
		return dozperweek;
	}
	public void setDozperweek(String dozperweek) {
		this.dozperweek = dozperweek;
	}
	public String getPepopunda() {
		return pepopunda;
	}
	public void setPepopunda(String pepopunda) {
		this.pepopunda = pepopunda;
	}
	public String getDangersign() {
		return dangersign;
	}
	public void setDangersign(String dangersign) {
		this.dangersign = dangersign;
	}
	public String getBirthcontrol() {
		return birthcontrol;
	}
	public void setBirthcontrol(String birthcontrol) {
		this.birthcontrol = birthcontrol;
	}
	public String getBirthpreparation() {
		return birthpreparation;
	}
	public void setBirthpreparation(String birthpreparation) {
		this.birthpreparation = birthpreparation;
	}
	
	public String getPmtct() {
		return pmtct;
	}
	public void setPmtct(String pmtct) {
		this.pmtct = pmtct;
	}
	public String getBalancediet() {
		return balancediet;
	}
	public void setBalancediet(String balancediet) {
		this.balancediet = balancediet;
	}
	public String getProffessionalname() {
		return proffessionalname;
	}
	public void setProffessionalname(String proffessionalname) {
		this.proffessionalname = proffessionalname;
	}
	public String getProffposition() {
		return proffposition;
	}
	public void setProffposition(String proffposition) {
		this.proffposition = proffposition;
	}
	public String getFileno() {
		return fileno;
	}
	public void setFileno(String fileno) {
		this.fileno = fileno;
	}
	public Date getAttendancedate() {
		return attendancedate;
	}
	public void setAttendancedate(Date attendancedate) {
		this.attendancedate = attendancedate;
	}
	public Date getDatetobeback() {
		return datetobeback;
	}
	public void setDatetobeback(Date datetobeback) {
		this.datetobeback = datetobeback;
	}
	public int  getBodykg() {
		return bodykg;
	}
	public void setBodykg(int  bodykg) {
		this.bodykg = bodykg;
	}
	public int  getBloodpressure() {
		return bloodpressure;
	}
	public void setBloodpressure(int  bloodpressure) {
		this.bloodpressure = bloodpressure;
	}
	public int  getLengthofpregnantperweek() {
		return lengthofpregnantperweek;
	}
	public void setLengthofpregnantperweek(int  lengthofpregnantperweek) {
		this.lengthofpregnantperweek = lengthofpregnantperweek;
	}
	public int  getHeightofpregnant() {
		return heightofpregnant;
	}
	public void setHeightofpregnant(int heightofpregnant) {
		this.heightofpregnant = heightofpregnant;
	}
	
}
