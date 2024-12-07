<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        /* Ensure the image fills the screen height */
        .full-screen-image {
            width: 100%;
            height: 100vh; /* 100% of the viewport height */
            object-fit: cover; /* Ensures the image covers the screen without distortion */
        }
    </style>
</head>
<body>
    <!-- Include Admin Navbar -->
    <%@include file="adminnavebar.jsp" %><br/><br/>

    <!-- Image for the Homepage with Full Screen Height -->
    <div align="center">
        <img src="/images/adminhomepage.jpg" alt="Home Image" class="full-screen-image">
    </div>

    <!-- Display Total Customers -->
    
</body>
</html>
