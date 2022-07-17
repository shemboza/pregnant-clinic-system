package Admin;

public class AddMtandao {
	String mtandaotype,mtandaocode,patientid;

	public AddMtandao(String mtandaotype, String mtandaocode, String patientid) {
		super();
		this.mtandaotype = mtandaotype;
		this.mtandaocode = mtandaocode;
		this.patientid = patientid;
	}

	public String getMtandaotype() {
		return mtandaotype;
	}

	public void setMtandaotype(String mtandaotype) {
		this.mtandaotype = mtandaotype;
	}

	public String getMtandaocode() {
		return mtandaocode;
	}

	public void setMtandaocode(String mtandaocode) {
		this.mtandaocode = mtandaocode;
	}

	public String getPatientid() {
		return patientid;
	}

	public void setPatientid(String patientid) {
		this.patientid = patientid;
	}
	

}
