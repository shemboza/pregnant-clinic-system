package PatientFiles;

import java.sql.Date;

public class PrimaryFileModel {
	String clinicname,patientid,ageabove18,patientname,husbandname,husbandjob,
	patientjob,husbedulevel,streetname,chairpersonname,destroyedmore2preg,operation,diabetes,heartdisease,tb,bloodgroup,rh,vdrlrpr,mrdt,
	fileno,signature;
	int patientage,husbandage,pregnantnumber,previouspregnant,childrensurvive;
	Date lastmenstruationdate,birthdate;
	
	
	public PrimaryFileModel(String clinicname, String patientid, String ageabove18, String patientname,
			String husbandname, String husbandjob, String patientjob, String husbedulevel, String streetname,
			String chairpersonname, String destroyedmore2preg, String operation, String diabetes, String heartdisease,
			String tb, String bloodgroup, String rh, String vdrlrpr, String mrdt, String fileno, String signature,
			int patientage, int husbandage, int pregnantnumber, int previouspregnant, int childrensurvive,
			Date lastmenstruationdate, Date birthdate) {
		super();
		this.clinicname = clinicname;
		this.patientid = patientid;
		this.ageabove18 = ageabove18;
		this.patientname = patientname;
		this.husbandname = husbandname;
		this.husbandjob = husbandjob;
		this.patientjob = patientjob;
		this.husbedulevel = husbedulevel;
		this.streetname = streetname;
		this.chairpersonname = chairpersonname;
		this.destroyedmore2preg = destroyedmore2preg;
		this.operation = operation;
		this.diabetes = diabetes;
		this.heartdisease = heartdisease;
		this.tb = tb;
		this.bloodgroup = bloodgroup;
		this.rh = rh;
		this.vdrlrpr = vdrlrpr;
		this.mrdt = mrdt;
		this.fileno = fileno;
		this.signature = signature;
		this.patientage = patientage;
		this.husbandage = husbandage;
		this.pregnantnumber = pregnantnumber;
		this.previouspregnant = previouspregnant;
		this.childrensurvive = childrensurvive;
		this.lastmenstruationdate = lastmenstruationdate;
		this.birthdate = birthdate;
	}
	public String getClinicname() {
		return clinicname;
	}
	public void setClinicname(String clinicname) {
		this.clinicname = clinicname;
	}
	public String getPatientid() {
		return patientid;
	}
	public void setPatientid(String patientid) {
		this.patientid = patientid;
	}
	public String getAgeabove18() {
		return ageabove18;
	}
	public void setAgeabove18(String ageabove18) {
		this.ageabove18 = ageabove18;
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	public String getHusbandname() {
		return husbandname;
	}
	public void setHusbandname(String husbandname) {
		this.husbandname = husbandname;
	}
	public String getPatientjob() {
		return patientjob;
	}
	public void setPatientjob(String patientjob) {
		this.patientjob = patientjob;
	}
	public String getHusbedulevel() {
		return husbedulevel;
	}
	public void setHusbedulevel(String husbedulevel) {
		this.husbedulevel = husbedulevel;
	}
	public String getStreetname() {
		return streetname;
	}
	public void setStreetname(String streetname) {
		this.streetname = streetname;
	}
	public String getChairpersonname() {
		return chairpersonname;
	}
	public void setChairpersonname(String chairpersonname) {
		this.chairpersonname = chairpersonname;
	}
	public String getDestroyedmore2preg() {
		return destroyedmore2preg;
	}
	public void setDestroyedmore2preg(String destroyedmore2preg) {
		this.destroyedmore2preg = destroyedmore2preg;
	}
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public String getDiabetes() {
		return diabetes;
	}
	public void setDiabetes(String diabetes) {
		this.diabetes = diabetes;
	}
	public String getHeartdisease() {
		return heartdisease;
	}
	public void setHeartdisease(String heartdisease) {
		this.heartdisease = heartdisease;
	}
	public String getTb() {
		return tb;
	}
	public void setTb(String tb) {
		this.tb = tb;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public String getRh() {
		return rh;
	}
	public void setRh(String rh) {
		this.rh = rh;
	}
	public String getVdrlrpr() {
		return vdrlrpr;
	}
	public void setVdrlrpr(String vdrlrpr) {
		this.vdrlrpr = vdrlrpr;
	}
	public String getMrdt() {
		return mrdt;
	}
	public void setMrdt(String mrdt) {
		this.mrdt = mrdt;
	}
	public String getFileno() {
		return fileno;
	}
	public void setFileno(String fileno) {
		this.fileno = fileno;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public int getPatientage() {
		return patientage;
	}
	public void setPatientage(int patientage) {
		this.patientage = patientage;
	}
	public int getHusbandage() {
		return husbandage;
	}
	public void setHusbandage(int husbandage) {
		this.husbandage = husbandage;
	}
	public int getPregnantnumber() {
		return pregnantnumber;
	}
	public void setPregnantnumber(int pregnantnumber) {
		this.pregnantnumber = pregnantnumber;
	}
	public int getPreviouspregnant() {
		return previouspregnant;
	}
	public void setPreviouspregnant(int previouspregnant) {
		this.previouspregnant = previouspregnant;
	}
	public int getChildrensurvive() {
		return childrensurvive;
	}
	public void setChildrensurvive(int childrensurvive) {
		this.childrensurvive = childrensurvive;
	}
	public Date getLastmenstruationdate() {
		return lastmenstruationdate;
	}
	public void setLastmenstruationdate(Date lastmenstruationdate) {
		this.lastmenstruationdate = lastmenstruationdate;
	}
	public Date getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}
	public String getHusbandjob() {
		return husbandjob;
	}
	public void setHusbandjob(String husbandjob) {
		this.husbandjob = husbandjob;
	}
	public PrimaryFileModel() {
		super();
	}
	
}

