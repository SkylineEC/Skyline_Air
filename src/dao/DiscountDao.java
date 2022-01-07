package dao;

public class DiscountDao {
public void setDiscount(String flightNumber, String selectDiscount,String discountStartDay,String discountEndDay) {
	double rate = Double.parseDouble(selectDiscount)/100.0;
	System.out.println(rate);
	String sql = "update flights SET pr_economy = pr_economy*"+rate+",pr_premium = pr_premium*"+rate+",pr_business = pr_business*"+rate+" WHERE flightNumber = '"+flightNumber+"' and date BETWEEN '"+discountStartDay+"' AND '"+discountEndDay+"' ";
	
	JDBCUtils jt = new JDBCUtils();
	jt.update(sql);
	
}
}
