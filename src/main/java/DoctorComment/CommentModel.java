package DoctorComment;

public class CommentModel {
	String patientId,filenumber,patientname,comment,doctorname,sign;

	public CommentModel(String patientId, String filenumber, String patientname, String comment) {
		super();
		this.patientId = patientId;
		this.filenumber = filenumber;
		this.patientname = patientname;
		this.comment = comment;
	}

	public CommentModel(String patientId, String filenumber, String patientname, String comment, String doctorname,
			String sign) {
		super();
		this.patientId = patientId;
		this.filenumber = filenumber;
		this.patientname = patientname;
		this.comment = comment;
		this.doctorname = doctorname;
		this.sign = sign;
	}

	public CommentModel() {
		super();
	}

	public String getDoctorname() {
		return doctorname;
	}

	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public String getPatientId() {
		return patientId;
	}

	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}

	public String getFilenumber() {
		return filenumber;
	}

	public void setFilenumber(String filenumber) {
		this.filenumber = filenumber;
	}

	public String getPatientname() {
		return patientname;
	}

	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

}
