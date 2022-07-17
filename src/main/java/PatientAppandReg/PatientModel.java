package PatientAppandReg;

import java.sql.Date;

public class PatientModel {
	String fname,lname,email,password,address,id;
	int contact_number;
	Date dob;
	public PatientModel(String fname, String lname, String email, String password, String address, int contact_number,
			Date dob) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		this.address = address;
		this.contact_number = contact_number;
		this.dob = dob;
	}
	public PatientModel() {
		super();
	}
	public PatientModel(String fname, String lname, String email, String password, String address, int contact_number,
			String id, Date dob) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		this.address = address;
		this.contact_number = contact_number;
		this.id = id;
		this.dob = dob;
	}
	
	
	public PatientModel(String id) {
		super();
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getContact_number() {
		return contact_number;
	}
	public void setContact_number(int contact_number) {
		this.contact_number = contact_number;
	}
	public Date getDob() {
		return dob;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	
	

}
