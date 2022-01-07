package dao;

import java.util.HashMap;


public class StaffDao {
	public String findPasswordByStaffName(String name) {
		
		String sql = "select * from staff where name = '" + name + "';";
		JDBCUtils jt = new JDBCUtils();
		HashMap<String, String> map = jt.queryById(sql);
		//System.out.println("map = "+map);
		if(map== null) {
			return "No";
		}
		return map.get("password");

	}
}
