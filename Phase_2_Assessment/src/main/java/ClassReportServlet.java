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


import com.web.Classreport;

@WebServlet("/classreport")
public class ClassReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;

	public void init(ServletConfig config) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			ServletContext context = config.getServletContext();
			String dburl = context.getInitParameter("dburl");
			String dbuser = context.getInitParameter("dbuser");
			String dbpassword = context.getInitParameter("dbpassword");
			conn = DriverManager.getConnection(dburl, dbuser, dbpassword);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String sql = "SELECT students.id AS student_id, students.name AS student_name, subjects.name AS subject_name, teachers.name AS teacher_name FROM students INNER JOIN classes ON students.class_id = classes.id INNER JOIN subjects ON classes.id = subjects.id INNER JOIN teachers ON subjects.id = teachers.id ORDER BY students.name";
				
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			List<Classreport> classReportData = new ArrayList<>();
			while (rs.next()) {
				int studentId = rs.getInt("student_id");
				String studentName = rs.getString("student_name");
				String subjectName = rs.getString("subject_name");
				String teacherName = rs.getString("teacher_name");
				classReportData.add(new Classreport(studentId, studentName, subjectName, teacherName));
			}
			request.setAttribute("classReportData", classReportData);
			request.getRequestDispatcher("classreport.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	public void destroy() {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}