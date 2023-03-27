

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

import com.web.Teacher;


@WebServlet("/teachers")
public class TeacherServlet extends HttpServlet {
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
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String sql="SELECT * FROM teachers";
			PreparedStatement statement=conn.prepareStatement(sql);
			ResultSet rs=statement.executeQuery();
			List<Teacher> teachers=new ArrayList<>();
			while(rs.next()) {
				int id=rs.getInt("id");
				String name=rs.getString("name");
				Teacher teacher=new Teacher(id,name);
				teachers.add(teacher);
			}
			request.setAttribute("teachers", teachers);
			request.getRequestDispatcher("teachers.jsp").forward(request, response);
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
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
