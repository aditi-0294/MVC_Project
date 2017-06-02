package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.* ;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.* ;
import DAO.* ;

/**
 * Servlet implementation class Login_Insert
 */
@WebServlet("/Login_Insert")
public class Login_Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Connection conn ;
       Statement stmt ;
       
       
     
    /**
     * @see HttpServlet#HttpServlet()
     */
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    		
    PrintWriter out = response.getWriter() ;
    
    String c_id = request.getParameter("CUSTOMER_ID") ;
    out.println(c_id) ;
    System.out.println("Customer Id. : " + c_id);
    
    		
	String c_name = request.getParameter("CUSTOMER_NAME") ;
	out.println(c_name) ;
	System.out.println("Customer Name : " + c_name);
	
	
	String c_passwd = request.getParameter("PASSWORD") ;
	out.println(c_passwd) ;
	System.out.println("Customer Password : " + c_passwd);
	
	 try {
		 Class.forName("org.h2.Driver") ;
		 System.out.println("Driver loaded successfully ... ");
		 
		 conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/MVC_prac" , "aditi" , "sanaditi") ;
		 System.out.println("Connected to database ..... ");
		 
		 stmt = conn.createStatement();
	
		 int i = stmt.executeUpdate("insert into Customers (CUSTOMER_ID , CUSTOMER_NAME , PASSWORD) values('"+c_id+"' , '"+c_name+"' , '"+c_passwd+"')");
		 
		 if(i > 0) 
			 out.println("Inserted Successfully ....");
		 else
			 out.println("Insert Unsuccessfull ... ");
	 }
	 catch(Exception e) {
		 out.println("Exception Arised : " + e) ;
	 }
	 
	RequestDispatcher dispatch = request.getRequestDispatcher("home.jsp") ;
	dispatch.forward(request,response);
  
  }
    	
}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
