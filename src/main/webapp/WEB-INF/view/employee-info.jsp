<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Info</title>
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

        form {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            padding: 10px 15px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h2>Employee Info</h2>
<form:form action="saveEmployee" modelAttribute="employee">
    <form:hidden path="id"/>

    <label for="firstname">Name</label>
    <form:input path="firstname" id="firstname"/>

    <label for="surname">Surname</label>
    <form:input path="surname" id="surname"/>

    <label for="department">Department</label>
    <form:input path="department" id="department"/>

    <label for="salary">Salary</label>
    <form:input path="salary" id="salary"/>

    <br><br>
    <input type="submit" value="OK">
</form:form>
</body>
</html>
