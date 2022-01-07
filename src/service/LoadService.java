package service;
import java.util.HashMap;
import java.util.List;

import dao.LoadDao;


public class LoadService {

	LoadDao dao = new LoadDao();
	
	public List<HashMap<String,String>> selectProvinceAll(){
		
		return dao.selectProvinceAll();
	}
	
public List<HashMap<String,String>> selectCityByCode(String code){
		
		return dao.selectCityByCode(code);
	}


public List<HashMap<String,String>> selectAirportByCode(String code){
	
	return dao.selectAirportByCode(code);
}





}