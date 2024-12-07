<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
</head>
<body>
<%@include file="adminnavebar.jsp" %><br/><br/>

<h2 align="center">Add Student</h2>
<form action="addStudent" method="post" align="center">
    <table>
        <tr>
            <td>ID:</td>
            <td><input type="text" name="id" required></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" required></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="email" name="email" required></td>
        </tr>
        <tr>
            <td>Phone Number:</td>
            <td><input type="text" name="phoneNumber" required></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type="password" name="password" required></td>
        </tr>
    </table>
    <br/>
    <button type="submit">Add Student</button>
</form>

</body>
</html>
