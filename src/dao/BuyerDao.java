package dao;

import java.util.ArrayList;
import java.util.HashMap;

import model.Buyer;

public class BuyerDao {
	
	public void insertBuyer(Buyer buyer) {
		String sql = "INSERT INTO `SkylineAir`.`buyer`(`name`, `IDCard`, `phoneNumber`, `flightID`,`classLevel`,`ticketNumber`,`bankCardNumber`,`paidMoney`) VALUES ('"+buyer.getName()+"', '"+buyer.getIDCard()+"', '"+buyer.getPhoneNumber()+"', "+buyer.getFlightID()+",'"+buyer.getClassLevel()+"','"+buyer.getTicketNumber()+"','"+buyer.getBankCardNumber()+"',"+buyer.getPaidMoney()+")";                         
		System.out.println(sql);
		JDBCUtils jf = new JDBCUtils();

		jf.update(sql);
	}
	
	//UPDATE `SkylineAir`.`buyer` SET `paidMoney` = 3444 WHERE
	//`name` = 'xls' AND `IDCard` = '21321' AND `phoneNumber` = '6756' 
	//		AND `flightID` = 11 AND `classLevel` = '1/' AND 
	//		`ticketNumber` = '2/' AND `bankCardNumber` = '897895667865'
	//		AND `paidMoney` = 4 LIMIT 1
	public Buyer findInfoByIDs(String IDcard, String flightID) {
		String[] info = new String[2];
		String sql = "select * from buyer where flightID = '"+flightID+"' and IDCard = '"+IDcard+"';";
		JDBCUtils jt = new JDBCUtils();
		Buyer buyer = new Buyer();
		ArrayList<HashMap<String, String>> alhs = (ArrayList<HashMap<String, String>>) jt.query(sql);
		for (HashMap<String, String> map : alhs) {	
			buyer.setBankCardNumber(map.get("bankCardNumber"));
			buyer.setClassLevel(map.get("classLevel"));
			buyer.setFlightID(Integer.parseInt(map.get("flightID")));
			buyer.setIDCard(map.get("IDCard"));
			buyer.setName(map.get("name"));
			buyer.setPaidMoney(Integer.parseInt(map.get("paidMoney")));
			buyer.setPhoneNumber(map.get("phoneNumber"));
			buyer.setTicketNumber(map.get("ticketNumber"));
			return buyer;
		}
		return null;
	}
	
	
}
