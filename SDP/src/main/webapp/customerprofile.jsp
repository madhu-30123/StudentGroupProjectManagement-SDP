<%@ page import="com.klef.jfsd.springboot.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Home</title>
</head>
<body>
    <jsp:include page="customernavbar.jsp" />
    <br/><br/>
    <h3 align="center">My Profile</h3>
    <div align="center">
        <p>ID: <%= c.getId() %></p>
        <p>Name: <%= c.getName() %></p>
        
        <p>Email: <%= c.getEmail() %></p>
        
        <p>Contact Number: <%= c.getPhoneNumber() %></p>
    </div>
</body>
</html>
