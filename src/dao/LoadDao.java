package dao;

import java.util.HashMap;
import java.util.List;

public class LoadDao {
	
	public List<HashMap<String,String>> selectProvinceAll(){
		String sql = "select * from province";
		JDBCUtils jt = new JDBCUtils();
		return jt.query(sql);
		
		
	}
	
	public List<HashMap<String,String>> selectCityByCode(String code){
		String sql = "select DISTINCT city,code from airports where province = (select name from province where code = '"+code+"')";		
		//System.out.println(sql);
		JDBCUtils jt = new JDBCUtils();
		return jt.query(sql);
		
		
	}
	
	public List<HashMap<String,String>> selectAirportByCode(String code){
		
		String sql = "select airport,code  from airports where code = '"+code+"'";		
		//System.out.println(sql);
		JDBCUtils jt = new JDBCUtils();
		return jt.query(sql);
		
		
	}
	

}
