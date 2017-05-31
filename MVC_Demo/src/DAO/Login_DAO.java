// DB file // database should be Open for .....

package DAO;

import Model.* ;
import java.sql.* ;

public class Login_DAO {
	
	Connection conn ;
	
	public Login_DAO() throws Exception {
		
		Class.forName("org.h2.Driver") ;
		System.out.println("Driver loaded successfully ... ");
		conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/MVC_prac" , "aditi" , "sanaditi") ;
		System.out.println("Connected to database ..... ");
	}
	
	public boolean isValid(Login_Model loginobj) throws Exception {
	
		PreparedStatement psmt = conn.prepareStatement("Select * from Customers where customer_name = ? and password = ?") ;
		
		psmt.setString(1 , loginobj.getLogin().trim());
		psmt.setString(2 , loginobj.getPassword().trim());
		
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()) 
			return true ;
		else
			return false ;
	}

}
