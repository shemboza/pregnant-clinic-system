package Employee;

public class UserModel {
	String email,password,role,identity,name;
	

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public UserModel(String email, String password, String role, String identity, String name) {
		super();
		this.email = email;
		this.password = password;
		this.role = role;
		this.identity = identity;
		this.name = name;
	}

	public UserModel() {
		super();
	}

	public UserModel(String email, String password, String role, String identity) {
		super();
		this.email = email;
		this.password = password;
		this.role = role;
		this.identity=identity;
		
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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	

}
