package Payment;

public class DiseasesPrice {
	int blood,rh,vdrprp,mrdt,pressure,urine,deabetes,tb,bloodkilo,id;

	public DiseasesPrice(int blood, int rh, int vdrprp, int mrdt, int pressure, int urine, int deabetes, int tb,
			int bloodkilo) {
		super();
		this.blood = blood;
		this.rh = rh;
		this.vdrprp = vdrprp;
		this.mrdt = mrdt;
		this.pressure = pressure;
		this.urine = urine;
		this.deabetes = deabetes;
		this.tb = tb;
		this.bloodkilo = bloodkilo;
	}

	public DiseasesPrice(int blood, int rh, int vdrprp, int mrdt, int pressure, int urine, int deabetes, int tb,
			int bloodkilo, int id) {
		super();
		this.blood = blood;
		this.rh = rh;
		this.vdrprp = vdrprp;
		this.mrdt = mrdt;
		this.pressure = pressure;
		this.urine = urine;
		this.deabetes = deabetes;
		this.tb = tb;
		this.bloodkilo = bloodkilo;
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public DiseasesPrice() {
		super();
	}

	public int getBlood() {
		return blood;
	}

	public void setBlood(int blood) {
		this.blood = blood;
	}

	public int getRh() {
		return rh;
	}

	public void setRh(int rh) {
		this.rh = rh;
	}

	public int getVdrprp() {
		return vdrprp;
	}

	public void setVdrprp(int vdrprp) {
		this.vdrprp = vdrprp;
	}

	public int getMrdt() {
		return mrdt;
	}

	public void setMrdt(int mrdt) {
		this.mrdt = mrdt;
	}

	public int getPressure() {
		return pressure;
	}

	public void setPressure(int pressure) {
		this.pressure = pressure;
	}

	public int getUrine() {
		return urine;
	}

	public void setUrine(int urine) {
		this.urine = urine;
	}

	public int getDeabetes() {
		return deabetes;
	}

	public void setDeabetes(int deabetes) {
		this.deabetes = deabetes;
	}

	public int getTb() {
		return tb;
	}

	public void setTb(int tb) {
		this.tb = tb;
	}

	public int getBloodkilo() {
		return bloodkilo;
	}

	public void setBloodkilo(int bloodkilo) {
		this.bloodkilo = bloodkilo;
	}
	
	public double getTotal(){
		return	this.blood + this.bloodkilo + this.deabetes + this.mrdt + this.pressure + this.rh +this.tb +this.urine + this.vdrprp;
	}

}
