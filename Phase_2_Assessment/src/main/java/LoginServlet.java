

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	public static final String USERNAME="admin";
    public static final String PASSWORD="admin";
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       
	    	String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        
	        if(username.equals(USERNAME) && password.equals(PASSWORD)) {
				HttpSession session=request.getSession();
				session.setAttribute("username", username);
				response.sendRedirect("dashboard.jsp");
			}else {
				request.setAttribute("errorMessage", "Invalid username or password");
				request.getRequestDispatcher("error.jsp").forward(request, response);			}
	    }
	}