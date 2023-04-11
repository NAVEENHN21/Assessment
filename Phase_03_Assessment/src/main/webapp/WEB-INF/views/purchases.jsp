<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Purchases</title>
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
            background-color: #4286f4;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
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
    <h1>Purchases</h1>
    <form method="get" action="/purchases">
        <label for="startDate">Start Date:</label>
        <input type="date" name="startDate" value="${startDate}">
        <label for="endDate">End Date:</label>
        <input type="date" name="endDate" value="${endDate}">
        <label for="categoryName">Category:</label>
        <input type="text" name="categoryName" value="${categoryName}">
        <input type="submit" value="Filter">
    </form>
    <br>
    <table>
        <tr>
            <th>ID</th>
            <th>Date</th>
            <th>Category</th>
            <th>Total Amount</th>
        </tr>
        <c:forEach var="purchase" items="${purchases}">
            <tr>
                <td>${purchase.id}</td>
                <td>${purchase.date}</td>
                <td>${purchase.category.name}</td>
                <td>${purchase.totalAmount}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
