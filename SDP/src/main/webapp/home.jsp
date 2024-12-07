<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    body, html {
        margin: 0;
        padding: 0;
        height: 100%;
        overflow: hidden;
    }
    .navbar {
        background-color: green;
        display: flex;
        justify-content: center;
        padding: 10px;
        margin: 0;
    }
    .navbar a {
        color: white !important;
        font-weight: bold;
        margin: 0 20px;
        text-decoration: none;
    }
    .navbar a:hover {
        background-color: darkgreen;
        padding: 5px 10px;
    }
    .image-container {
        position: relative;
        height: calc(100% - 80px); /* Adjust height to account for navbar */
        width: 100%;
    }
    .image-container img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    .overlay-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -60%);
        background-color: rgba(0, 0, 0, 0.5); /* Optional: Add a semi-transparent background */
        padding: 10px;
        color: white;
        text-align: center;
    }
</style>
</head>
<body>
<%@include file="mainnavebar.jsp" %>

<div class="image-container">
    <img src="/images/HomeImage.jpg" alt="Agriculture and Farming" style="max-width: 100%; height: auto;">

    <div class="overlay-text">
        <h3>Ready to transform group work into a rewarding experience?</h3>
        <h1>Welcome to Student Group Projects Management!</h1>
    </div>
</div>

</body>
</html>
