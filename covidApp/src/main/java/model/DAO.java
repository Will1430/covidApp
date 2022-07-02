package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO{

	private static final String driverConection = "com.mysql.cj.jdbc.Driver";	
	private static final String url = "jdbc:mysql://localhost:3306/covidapp?useTimezone=true&serverTimezone=UTC";
	private static final String user = "root" ;
	private static final String password = "qwe54321";
		
	public Connection connect(){
		
		Connection con = null;
		
		try{
			Class.forName(driverConection);
			con = DriverManager.getConnection(url, user, password);
			return con;
			}catch(ClassNotFoundException | SQLException  e){ 
				System.out.println(e);
			}
		return null;

			
	}
		
		
}
	



	

