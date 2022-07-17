package LoginUser;

public class ForgetModel {
	String pwd1,pwd2,email;
	boolean confirm;

	public ForgetModel(String pwd1, String pwd2) {
		super();
		this.pwd1 = pwd1;
		this.pwd2 = pwd2;
	}
	

	public ForgetModel() {
		super();
	}


	public String getPwd1() {
		return pwd1;
	}

	public void setPwd1(String pwd1) {
		this.pwd1 = pwd1;
	}

	public String getPwd2() {
		return pwd2;
	}

	public void setPwd2(String pwd2) {
		this.pwd2 = pwd2;
	}


	public Boolean getConfirm() {
		return confirm;
		
	}


	public void setConfirm(boolean b) {
		if(pwd1==pwd2) {
			this.confirm = b;
		}else {
			System.out.print("Not Confirmed");
		}
		
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	
	
	

}
