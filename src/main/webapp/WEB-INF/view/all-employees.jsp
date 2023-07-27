<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Employees</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 20px;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #d0d0d0;
        }

        .operation-buttons input {
            margin-right: 5px;
            padding: 5px 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 10px; /* Rounded corners */
        }

        .operation-buttons input:hover {
            background-color: #0056b3;
        }

        .add-button-container {
            text-align: center;
            margin-top: 15px;
        }

        .add-button {
            padding: 15px 20px;
            background-color: #4caf50;
            color: #fff;
            font-size: 16px; /* Enlarged font size */
            border: none;
            cursor: pointer;
            border-radius: 10px; /* Rounded corners */
        }

        .add-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h2>All Employees</h2>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>
    <c:forEach var="emp" items="${allEmps}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <tr>
            <td>${emp.firstname}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td class="operation-buttons">
                <input type="button" value="Update" onclick="window.location.href='${updateButton}'"/>
                <input type="button" value="Delete" onclick="window.location.href='${deleteButton}'"/>
            </td>
        </tr>
    </c:forEach>
</table>
<div class="add-button-container">
    <input type="button" class="add-button" value="Add" onclick="window.location.href='addNewEmployee'"/>
</div>
</body>
</html>
