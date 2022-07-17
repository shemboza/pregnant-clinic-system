package PatientAppandReg;

import java.sql.Date;

public class AppointmentModel {
	int id;
	Date date;
	String patientId,appointment_reason;
	

	public AppointmentModel(int id, Date date, String patientId, String appointment_reason) {
		super();
		this.id = id;
		this.date = date;
		this.patientId = patientId;
		this.appointment_reason = appointment_reason;
	}

	public AppointmentModel(Date date, String patientId, String appointment_reason) {
		super();
		this.date = date;
		this.patientId = patientId;
		this.appointment_reason = appointment_reason;
	}

	public AppointmentModel(int id, Date date) {
		super();
		this.id = id;
		this.date = date;
	}

	public AppointmentModel() {
		super();
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAppointment_reason() {
		return appointment_reason;
	}

	public void setAppointment_reason(String appointment_reason) {
		this.appointment_reason = appointment_reason;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getPatientId() {
		return patientId;
	}

	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}
	

}
