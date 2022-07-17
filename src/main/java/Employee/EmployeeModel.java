package Employee;

public class EmployeeModel {
	int contact_number,id;
	String name,email,gender,professional_status,employee_Id;
	public EmployeeModel() {
		super();
	}
	public EmployeeModel(int contact_number, String name, String email, String gender,
			String professional_status, String employee_Id) {
		super();
		this.contact_number = contact_number;
		this.name = name;
		this.email = email;
		
		this.gender = gender;
		this.professional_status = professional_status;
		this.employee_Id = employee_Id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getContact_number() {
		return contact_number;
	}
	public void setContact_number(int contact_number) {
		this.contact_number = contact_number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getProfessional_status() {
		return professional_status;
	}
	public void setProfessional_status(String professional_status) {
		this.professional_status = professional_status;
	}
	public String getEmployee_Id() {
		return employee_Id;
	}
	public void setEmployee_Id(String employee_Id) {
		this.employee_Id = employee_Id;
	}
	

}
