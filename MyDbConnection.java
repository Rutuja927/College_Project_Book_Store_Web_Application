package conectivity;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyDbConnection {

	Connection con;
	
	public Connection getMyConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		return con;
	}
}
