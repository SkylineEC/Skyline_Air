package dao;

import java.util.HashMap;

import model.Seats;

public class SeatsDao {
	
	
	public void addSeats(Seats seats,String classLevel) {
		
		JDBCUtils jf = new JDBCUtils();
		String seatsPre = findSeatsByFlightID(seats.getFlightID(),classLevel);
		String newSeats = null;
		if(seatsPre.equals(",")) {
			newSeats = seats.getSeats();
			
		}else {
			newSeats = seatsPre+seats.getSeats();
		}
		
		String sql = "";
		switch(classLevel) {
		case"0": 
		sql = "UPDATE `SkylineAir`.`seats` SET `ecoSeats` = '"+newSeats+"' WHERE `flightID` = "+seats.getFlightID()+"";
		break;
		case"1":sql = "UPDATE `SkylineAir`.`seats` SET `preSeats` = '"+newSeats+"' WHERE `flightID` = "+seats.getFlightID()+"";
		break;
		case"2":sql = "UPDATE `SkylineAir`.`seats` SET `busSeats` = '"+newSeats+"' WHERE `flightID` = "+seats.getFlightID()+"";
		break;
		
		}

		jf.update(sql);
	}
	
	
	
	public String findSeatsByFlightID(String flightID,String classLevel) {
		String[] str = new String[3];
		String sql = "select * from seats where flightID = "+flightID+"";
		JDBCUtils jf = new JDBCUtils();
		
		HashMap<String,String> map = jf.queryById(sql);
		switch(classLevel) {
		case"0":return map.get("ecoSeats");
		case"1":return map.get("preSeats");	
		case"2":return map.get("busSeats");
		}
		return null;
		
	}
	
	public HashMap<String,String> seatsSelected(String flightID){
		String sql = "select * from seats where flightID = '"+flightID+"' ";
		JDBCUtils jt = new JDBCUtils();
		return  jt.queryById(sql);
		
		
	}
	
	
	
	
}
