<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Class Report</title>
<link rel="stylesheet" href="style.css">
</head>
	<style>
		table {
			border-collapse: collapse;
			width: 100%;
		}
		
		th, td {
			text-align: left;
			padding: 8px;
		}
		
		th {
			background-color: #4CAF50;
			color: white;
		}
		
		tr:nth-child(even) {
			background-color: #f2f2f2;
		}
		
		tr:hover {
			background-color: #ddd;
		}
	</style>
<body>
    <h1>Class Report</h1>
    <table>
        <thead>
            <tr>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Subject Name</th>
                <th>Teacher Name</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${classReportData}" var="classReportRow">
                <tr>
                    <td>${classReportRow.student_id}</td>
                    <td>${classReportRow.student_name}</td>
                    <td>${classReportRow.subject_name}</td>
                    <td>${classReportRow.teacher_name}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>