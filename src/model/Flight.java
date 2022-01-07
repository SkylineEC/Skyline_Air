package model;

public class Flight {
	int id;
	public String Transit = null;
	
	
	public String getTransit() {
		return Transit;
	}
	public void setTransit(String transit) {
		Transit = transit;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	String fromAirport;
	String toAirport;
	String vovage;
	String planeModel;
	String date;
	String departureTime;
	String arrivalTime;
	String flightNumber;
	String pr_economy;
	String pr_premium;
	String pr_business;
	int eco_ticket;
	int pre_ticket;
	int bus_ticket;
	public int getEco_ticket() {
		return eco_ticket;
	}
	public void setEco_ticket(int eco_ticket) {
		this.eco_ticket = eco_ticket;
	}
	public int getPre_ticket() {
		return pre_ticket;
	}
	public void setPre_ticket(int pre_ticket) {
		this.pre_ticket = pre_ticket;
	}
	public int getBus_ticket() {
		return bus_ticket;
	}
	public void setBus_ticket(int bus_ticket) {
		this.bus_ticket = bus_ticket;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getFromAirport() {
		return fromAirport;
	}
	public void setFromAirport(String fromAirport) {
		this.fromAirport = fromAirport;
	}
	public String getToAirport() {
		return toAirport;
	}
	public void setToAirport(String toAirport) {
		this.toAirport = toAirport;
	}
	public String getVovage() {
		return vovage;
	}
	public void setVovage(String vovage) {
		this.vovage = vovage;
	}
	public String getPlaneModel() {
		return planeModel;
	}
	public void setPlaneModel(String planeModel) {
		this.planeModel = planeModel;
	}
	public String getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}
	public String getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
	public String getFlightNumber() {
		return flightNumber;
	}
	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}
	public String getPr_economy() {
		return pr_economy;
	}
	public void setPr_economy(String pr_economy) {
		this.pr_economy = pr_economy;
	}
	public String getPr_premium() {
		return pr_premium;
	}
	public void setPr_premium(String pr_premium) {
		this.pr_premium = pr_premium;
	}
	public String getPr_business() {
		return pr_business;
	}
	public void setPr_business(String pr_business) {
		this.pr_business = pr_business;
	}
	
}
