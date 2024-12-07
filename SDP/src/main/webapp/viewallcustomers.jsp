<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Students</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        /* Custom styling for content to align with the navbar */
        .container {
            margin-left: 270px; /* Space for the vertical navbar */
            padding: 20px;
        }
        table {
            width: 100%;
            margin-top: 20px;
        }
        button {
            margin: 5px;
        }
        h2, h3 {
            color: navy;
        }
    </style>
</head>
<body bgcolor="lightblue">

    <!-- Include the admin navbar -->
    <%@ include file="adminnavebar.jsp" %><br/><br/>

    <div class="container">
        <h2>Total Students Registered: <c:out value="${count}"></c:out></h2>

        

        <!-- Button to add a new student -->
        <div align="center">
            <form action="createStudentForm" method="get">
                <button type="submit" class="btn btn-primary">Add New Student</button>
            </form>
        </div>

        <br/>

        <!-- Table to display students -->
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>EMAIL</th>
                    <th>CONTACT NUMBER</th>
                    <th>ACTIONS</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${customerlist}" var="customer">
                    <tr>
                        <td><c:out value="${customer.id}"></c:out></td>
                        <td><c:out value="${customer.name}"></c:out></td>
                        <td><c:out value="${customer.email}"></c:out></td>
                        <td><c:out value="${customer.phoneNumber}"></c:out></td>
                        <td>
                            <!-- Delete Button -->
                            <form action="deleteStudent" method="post" style="display:inline;">
                                <input type="hidden" name="studentId" value="${customer.id}">
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
