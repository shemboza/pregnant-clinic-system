package Payment;

public class PaymentModel {
	String patientid,paymentcode,mtandao,status="Not Confirmed";
	int apointmentid;
	
	
	public PaymentModel(String patientid, String paymentcode, String mtandao, String status, int apointmentid
			) {
		super();
		this.patientid = patientid;
		this.paymentcode = paymentcode;
		this.mtandao = mtandao;
		this.status = status;
		this.apointmentid = apointmentid;
	
	}
	public PaymentModel(String status, int apointmentid) {
		super();
		this.status = status;
		this.apointmentid = apointmentid;
	}
	public PaymentModel() {
		super();
	}
	public String getPatientid() {
		return patientid;
	}
	public void setPatientid(String patientid) {
		this.patientid = patientid;
	}
	public String getPaymentcode() {
		return paymentcode;
	}
	public void setPaymentcode(String paymentcode) {
		this.paymentcode = paymentcode;
	}
	public String getMtandao() {
		return mtandao;
	}
	public void setMtandao(String mtandao) {
		this.mtandao = mtandao;
	}
	public int getApointmentid() {
		return apointmentid;
	}
	public void setApointmentid(int apointmentid) {
		this.apointmentid = apointmentid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	

}
