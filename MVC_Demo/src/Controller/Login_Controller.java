package Controller;

import java.io.* ;
import javax.servlet.* ;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.* ;

import Model.* ;
import DAO.* ;



/**
 * Servlet implementation class Login_Controller
 */
@WebServlet("/Login_Controller")
public class Login_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username = request.getParameter("uname") ;
		String password = request.getParameter("passwd") ;
		
		Login_Model loginobj = new Login_Model();
		loginobj.setLogin(username) ;
		loginobj.setPassword(password) ;
		
		try {
			
			Login_DAO loginDAO = new Login_DAO() ;
			
			if(loginDAO.isValid(loginobj)) {
				
				RequestDispatcher dispatch = request.getRequestDispatcher("success.jsp") ;
				dispatch.forward(request,response);
			}
			
			else {
				
				RequestDispatcher dispatch = request.getRequestDispatcher("failure.jsp") ;
			    dispatch.forward(request,response);
			}
		}
		
		catch(Exception e) {
			System.out.println("Exception Arised : " + e);
		}
	}

}
