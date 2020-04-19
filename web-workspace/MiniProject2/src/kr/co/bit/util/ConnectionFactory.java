package kr.co.bit.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

	public Connection getConnection() {
		
		Connection conn = null;
		
		/* oracle
		String oracle = "oracle.jdbc.driver.OracleDriver";
		String oracle_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String oracle_user = "hr";
		String oracle_password = "hr";
		*/
		
		String mysql = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql:localhost:3306/petcommunity";
		String user = "petUser";
		String password = "1234";
		
		try {
			
			Class.forName(mysql);
			conn = DriverManager.getConnection(url, user, password);
						
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
