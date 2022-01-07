package model;

public class Buyer {
String name;
String IDCard;
String phoneNumber;
int flightID;
String classLevel;
String ticketNumber;
String bankCardNumber;
public int getPaidMoney() {
	return paidMoney;
}
public void setPaidMoney(int paidMoney) {
	this.paidMoney = paidMoney;
}
int paidMoney;
public String getBankCardNumber() {
	return bankCardNumber;
}
public void setBankCardNumber(String bankCardNumber) {
	this.bankCardNumber = bankCardNumber;
}
public String getClassLevel() {
	return classLevel;
}
public void setClassLevel(String classLevel) {
	this.classLevel = classLevel;
}
public String getTicketNumber() {
	return ticketNumber;
}
public void setTicketNumber(String ticketNumber) {
	this.ticketNumber = ticketNumber;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getIDCard() {
	return IDCard;
}
public void setIDCard(String iDCard) {
	IDCard = iDCard;
}
public String getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}
public int getFlightID() {
	return flightID;
}
public void setFlightID(int flightID) {
	this.flightID = flightID;
}
}
