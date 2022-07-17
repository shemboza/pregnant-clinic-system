package Admin;

import java.sql.Date;

public class DoctorModel {
	private int contact ;
	Date dob;
	private String email,password,firstname,lastname;
	public DoctorModel() {
		// TODO Auto-generated constructor stub
	}
	public DoctorModel(int contact, Date dob, String email, String password, String firstname, String lastname) {
		super();
		this.contact = contact;
		this.dob = dob;
		this.email = email;
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
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
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
}
