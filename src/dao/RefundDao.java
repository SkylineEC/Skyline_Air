package dao;

import java.util.ArrayList;
import java.util.HashMap;

import model.Flight;



public class RefundDao {
public boolean findBuyerExistByIDCard(String IDCard) {
		
		String sql = "select * from buyer where IDCard = '" + IDCard + "';";
		JDBCUtils jt = new JDBCUtils();
		ArrayList<HashMap<String, String>> alhs = (ArrayList<HashMap<String, String>>) jt.query(sql);
		if (alhs.isEmpty()) {
			
			return false;
			
			
		}else {
			
			return true;
		}
	}

public void deleteBuyerInfo(String flightID, String IDCard) {
	String sql = "DELETE FROM `SkylineAir`.`buyer` WHERE `flightID` = "+flightID+"  AND `IDCard` = '"+IDCard+"'";
	System.out.println(sql);
	JDBCUtils jt = new JDBCUtils();
	jt.update(sql);
	
}

public ArrayList<Flight> findFlightsByIDCard(String IDCard){
	String sql = "select * from flights where id  in (select flightID from buyer where IDCard = '"+IDCard+"')";
	JDBCUtils jt = new JDBCUtils();
	ArrayList<HashMap<String, String>> alhs = (ArrayList<HashMap<String, String>>) jt.query(sql);
	ArrayList<Flight> list = new ArrayList<Flight>();
	if (alhs != null) {
		for (HashMap<String, String> map : alhs) {	
			Flight flight = new Flight();
			flight.setId(Integer.parseInt(map.get("id")));
			flight.setFromAirport(map.get("fromAirport"));
			flight.setToAirport(map.get("toAirport"));
			flight.setVovage(map.get("voyage"));
			flight.setPlaneModel(map.get("planeModel"));
			flight.setDate(map.get("date"));
			flight.setDepartureTime(map.get("departureTime"));
			flight.setArrivalTime(map.get("arrivalTime"));
			flight.setFlightNumber(map.get("flightNumber"));
			flight.setPr_economy(map.get("pr_economy"));
			flight.setPr_premium(map.get("pr_premium"));
			flight.setPr_business(map.get("pr_business"));
			flight.setEco_ticket(Integer.parseInt(map.get("eco_ticket")));
			flight.setPre_ticket(Integer.parseInt(map.get("pre_ticket")));
			flight.setBus_ticket(Integer.parseInt(map.get("bus_ticket")));
			list.add(flight);
		}
	}
	return list;
}
}
