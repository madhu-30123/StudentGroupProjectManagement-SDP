<%@page import="com.klef.jfsd.springboot.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Student Page</title>

  <style>
    /* Apply background image to the body */
    body {
      background-image: url('/images/girl.jpg'); /* Path to your image */
      background-size: cover; /* Ensure the image covers the entire page */
      background-position: center center; /* Center the image horizontally and vertically */
      background-attachment: fixed; /* Fix the background when scrolling */
      background-repeat: no-repeat; /* Prevent the image from repeating */
      color: white; /* Optional: Adjust text color to ensure visibility on the background */
      margin: 0; /* Remove default margin to ensure the background covers the whole page */
      height: 100vh; /* Ensure the body takes full viewport height */
    }

    /* Optional: Styling for text to improve visibility on top of the background */
    h1, h2, p {
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6); /* Add shadow for better readability */
    }
  </style>
</head>
<body>
  <%@include file="customernavbar.jsp" %><br/><br/>
  
</body>
</html>
