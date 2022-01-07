package dao;

import java.util.ArrayList;
import java.util.HashMap;

import model.Flight;
import model.FlightData;

public class StatisticsDao {
	
	
	
	public String getMoney(){
		
		String sql = "select SUM(paidMoney) as money from buyer";

		JDBCUtils jt = new JDBCUtils();
		
		
		HashMap<String,String> map =  jt.queryById(sql);
		System.out.print(map.get("money"));
		return map.get("money");
		
	}
	
	
	public ArrayList<FlightData> getDataList(){
		String sql = "select flightID,SUM(paidMoney) as money from buyer GROUP BY flightID";
		JDBCUtils jt = new JDBCUtils();
		ArrayList<HashMap<String, String>> alhs = (ArrayList<HashMap<String, String>>) jt.query(sql);
		ArrayList<FlightData> list = new ArrayList<FlightData>();
		if (alhs != null) {
			for (HashMap<String, String> map : alhs) {	
				FlightData flight = new FlightData();
				flight.setFlightID(map.get("flightID"));
				flight.setMoney(map.get("money"));
				list.add(flight);
			}
		
		}
		return list;
	}
	
}
