package dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

import model.Flight;


public class FlightDao {

	public String getNameFromAirportID(String code) {
		String sql = "select * from airports where code = '"+code+"'";
		JDBCUtils jt = new JDBCUtils();
		HashMap<String,String> map =  jt.queryById(sql);
		return map.get("airport");
		
	}
	
	
	
	

	
	
	public void insertFlight(Flight flight) {
		//NSERT INTO `SkylineAir`.`flights`(`fromAirport`, `toAirport`, `voyage`, `planeModel`, `departureTime`, `arrivalTime`, `flightNumber`, `pr_economy`, `pr_ premium`, `pr_business`) VALUES ('12', '12', '12', '12', '2020-07-22 15:51:27', '2020-07-31 15:51:30', 12, '21', '21', '21')
		String sql = "INSERT INTO flights(fromAirport, toAirport, voyage, planeModel, date,departureTime, arrivalTime, flightNumber, pr_economy, pr_premium, pr_business,eco_ticket,pre_ticket,bus_ticket) VALUES ('"+flight.getFromAirport()+"', '"+flight.getToAirport()+"', '"+flight.getVovage()+"', '"+flight.getPlaneModel()+"', '"+flight.getDate()+"', '"+flight.getDepartureTime()+"', '"+flight.getArrivalTime()+"', '"+flight.getFlightNumber()+"', '"+flight.getPr_economy()+"', '"+flight.getPr_premium()+"', '"+flight.getPr_business()+"','20','20','20')";
		
		//System.out.print(sql);
		JDBCUtils jf = new JDBCUtils();
//UPDATE `SkylineAir`.`seats` SET `ecoSeats` = ',', `preSeats` = ',', `busSeats` = ',' WHERE `flightID` = 14 AND `ecoSeats` IS NULL AND `preSeats` IS NULL AND `busSeats` IS NULL LIMIT 1
		
		
		
		
		
		
		
		
		
		jf.update(sql);
		int flightID = Integer.parseInt(getFlightID(flight));
		String sql2 = "INSERT INTO `SkylineAir`.`seats`(`flightID`,`ecoSeats`,`preSeats`,`busSeats`) VALUES ("+flightID+", ',' , ',' , ',' )";
		jf.update(sql2);

	}
	
	
	public String getFlightID(Flight flight) {
		
		String sql = "select id from flights where date = '"+flight.getDate()+"' and flightNumber = '"+flight.getFlightNumber()+"' ";
		JDBCUtils jf = new JDBCUtils();
		HashMap<String,String> map = jf.queryById(sql);
		return map.get("id");
		
	}
	public Flight getFlightById(int id){
		String sql = "select * from flights where id = "+id+"";
		JDBCUtils jt = new JDBCUtils();
		HashMap<String,String> map =  jt.queryById(sql);
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
		return flight;
	}
	
	
	public void updateTicketStatus(String flightID,String classLevel, int number) {
		String sql = "";
		if(classLevel.equals("0")) {
			sql = "UPDATE `SkylineAir`.`flights` SET `eco_ticket` = `eco_ticket`-"+number+" WHERE `id` = "+flightID+"";

		}else if(classLevel.equals("1")) {
			sql = "UPDATE `SkylineAir`.`flights` SET `pre_ticket` = `pre_ticket`-"+number+" WHERE `id` = "+flightID+"";

		}else if(classLevel.equals("2")) {
			sql = "UPDATE `SkylineAir`.`flights` SET `bus_ticket` = `bus_ticket`-"+number+" WHERE `id` = "+flightID+"";

		}
		System.out.println(sql);
		JDBCUtils jt = new JDBCUtils();
		jt.update(sql);
	}
	

	public static String[] getDateSpan(String time){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String[] str = new String[2];
        Calendar calendar = Calendar.getInstance();
        Date date=null;
        try {
            date = sdf.parse(time);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        calendar.setTime(date);
        int day=calendar.get(Calendar.DATE);
        // 后一天为 +1   前一天 为-1
        calendar.set(Calendar.DATE,day-15);
 
        str[0] = sdf.format(calendar.getTime());
        calendar.set(Calendar.DATE,day+45);
        str[1] = sdf.format(calendar.getTime());
        return str;
}
	
	
	public ArrayList<Flight> selectFilghts(String fromAirport,String toAirport,String date) {
		String dateSpan[] = getDateSpan(date);
		String sql = "select * from flights where fromAirport = '"+fromAirport+"' and toAirport = '"+toAirport+"' and date BETWEEN '"+dateSpan[0]+"' AND '"+dateSpan[1]+"' order by date ASC;";
		//SELECT * FROM flights WHERE date BETWEEN '20130101' AND '20220130'
		System.out.println(sql);
		JDBCUtils jt = new JDBCUtils();
		// JDBC���ص��� List<Map>
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
	
	public ArrayList<Flight> selectTransitFilghts(String fromAirport,String toAirport,String date) {
		
		//String sql1 = "select * from flights where fromAirport = '"+fromAirport+"' and toAirport = '"+toAirport+"' and date BETWEEN '"+dateSpan[0]+"' AND '"+dateSpan[1]+"' order by date ASC;";
		String sql = "select * from flights where fromAirport in (select toAirport from flights where fromAirport = '"+fromAirport+"') and toAirport = '"+toAirport+"' and date = '"+date+"' ";
		System.out.println(sql);
		JDBCUtils jt = new JDBCUtils();

		ArrayList<HashMap<String, String>> alhs = (ArrayList<HashMap<String, String>>) jt.query(sql);
		ArrayList<Flight> list = new ArrayList<Flight>();
		if (alhs != null) {
			for (HashMap<String, String> map : alhs) {	
				Flight flight = new Flight();
				flight.setTransit(fromAirport);
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
