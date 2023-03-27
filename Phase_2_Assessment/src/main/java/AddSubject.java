import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.Student;

@WebServlet("/addsubjects")
public class AddSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
       
	
	public void init(ServletConfig config) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			ServletContext context=config.getServletContext();
			String dburl=context.getInitParameter("dburl");
			String dbuser=context.getInitParameter("dbuser");
			String dbpassword=context.getInitParameter("dbpassword");
			conn=DriverManager.getConnection(dburl,dbuser,dbpassword);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");

		
		try {
			String sql = "INSERT INTO subjects (id,name) VALUES (?, ?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, id);
			statement.setString(2, name);

			
			int rowsInserted = statement.executeUpdate();
			if (rowsInserted > 0) {
				HttpSession session = request.getSession();
				response.sendRedirect("subjects");
			} else {
				response.getWriter().println("Error");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	
	public void destroy() {
		try {
			if(conn!=null) {
				conn.close();
			}			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}