package dao;




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Scanner;


public class JDBCUtils {

	//����
	Connection conn = null;
	//�������
	public Statement stmt = null;
	//�����
	ResultSet rs = null;
	
	public void conn() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SkylineAir?useUnicode=true&characterEncoding=utf8", "root", "12345678");
			
			stmt = conn.createStatement();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	public HashMap<String,String> queryById(String sql){
		
		List<HashMap<String,String>> list = new ArrayList<HashMap<String,String>>();
		
		try {
			conn();
			rs = stmt.executeQuery(sql);
			ResultSetMetaData rsmd = rs.getMetaData();
			
			
			while(rs.next()) { 
				HashMap<String,String> map = new HashMap<String,String>();
				for(int i = 1 ; i <= rsmd.getColumnCount() ; i++){
					String key = rsmd.getColumnName(i);
					String value = rs.getString(i);
					map.put(key,value);
				}
				list.add(map);
				return map;
			}

		} catch (SQLException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		} finally{

			close();
		}
		return null;
	}
	public List<HashMap<String,String>> query(String sql) {
		//�洢���ݵ�list
		List<HashMap<String,String>> list = new ArrayList<HashMap<String,String>>();
		
		try {
			conn();
			rs = stmt.executeQuery(sql);
			ResultSetMetaData rsmd = rs.getMetaData();
			
			
			while(rs.next()) { 
				HashMap<String,String> map = new HashMap<String,String>();
				for(int i = 1 ; i <= rsmd.getColumnCount() ; i++){
					String key = rsmd.getColumnName(i);
					String value = rs.getString(i);
					map.put(key,value);
				}
				list.add(map);
			}

		} catch (SQLException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		} finally{

			close();
		}
		
		return list;
	}
	
	//Ԥ�������

	public void close() {
		try {
			if(rs != null) {

				rs.close();
			}
			if(stmt != null) {
				stmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int update(String sql) {
		int rows = 0;
		try {
			conn();
			//���͵���SQL���
			rows = stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return rows;
	}
	//ʹ��
	public static void main(String[] args) {
		JDBCUtils jt = new JDBCUtils();
		
	
		//String sql = "select * from Member ";
		//System.out.println(sql);
		//List<HashMap<String,String>> list = 
				//jt.query(sql);
		//System.out.println(list);
		jt.conn();
		String sql = "insert into Member (Name, Age, Password,Gender ,Address,Email) value ('"+"22"+"', "+12+", "
				+ "'"+"123"+"','"+"23"+"','"+"23"+"','"+"23"+"');";;
        //st.execute(sql);
		try {
			jt.stmt.execute(sql);
			jt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
