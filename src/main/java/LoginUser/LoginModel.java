package LoginUser;

public class LoginModel {
	private String username,password,role,nameorig;
	private String patientId;
	
	

	public String getNameorig() {
		return nameorig;
	}

	public void setNameorig(String nameorig) {
		this.nameorig = nameorig;
	}

	public LoginModel(String username, String password, String role, String nameorig, String patientId) {
		super();
		this.username = username;
		this.password = password;
		this.role = role;
		this.nameorig = nameorig;
		this.patientId = patientId;
	}

	public LoginModel() {
		// TODO Auto-generated constructor stub
	}
	
	public LoginModel(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPatientId() {
		return patientId;
	}
	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}

	
}
