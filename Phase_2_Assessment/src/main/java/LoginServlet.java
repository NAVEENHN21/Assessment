

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

//	    
//	private DataSource dataSource; 
//	private Connection connection;// Injected by the container
//	    
//    public void init(ServletConfig config) {
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			ServletContext context=config.getServletContext();
//			String dburl = context.getInitParameter("dburl");
//			String dbuser = context.getInitParameter("dbuser");
//			String dbpass = context.getInitParameter("dbpass");
//			connection = DriverManager.getConnection(dburl,dbuser,dbpass);
//		} catch (ClassNotFoundException | SQLException e) {
//			e.printStackTrace();
//		}
//    }

    
	    
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       
	    	String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        
	        if(username.equals(USERNAME) && password.equals(PASSWORD)) {
				HttpSession session=request.getSession();
				session.setAttribute("username", username);
				response.sendRedirect("dashboard.jsp");
			}else {
				System.out.println("errorMessage"+"Invalid username or password");
			}
	    }
	}