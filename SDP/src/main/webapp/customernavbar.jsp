<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <title>JFSD</title>

  <style>
    /* Navigation Bar Styling */
    .navbar-custom {
      background-color: black; /* Navy blue background */
      border-radius: 0;
      padding: 20px;
      width: 250px; /* Fixed width */
      position: fixed; /* Fixed position to stay in view */
      height: 100%; /* Full height */
      top: 0;
      left: 0;
      z-index: 1000; /* Keep navbar on top */
    }

    /* Make navbar items stack vertically */
    .navbar-custom .nav {
      display: flex;
      flex-direction: column;
      padding: 0;
    }

    .navbar-custom .nav > li {
      list-style-type: none; /* Remove default list bullets */
      margin-bottom: 10px; /* Space between items */
    }

    .navbar-custom .nav > li > a {
      color: white; /* White text color */
      text-align: left; /* Align text to the left */
      padding: 15px;
      font-size: 18px;
      text-decoration: none;
      display: block; /* Ensure the link takes full width */
    }

    .navbar-custom .nav > li > a:hover {
      background-color: #003366; /* Darker blue on hover */
      color: #ffcc00; /* Yellow text on hover */
    }

    /* Body styling */
    body {
      margin-left: 220px; /* Add space for the vertical navbar */
      background-color: lightblue;
      padding: 20px;
    }

    /* Optional: Adjust link size on small screens */
    @media (max-width: 768px) {
      .navbar-custom .nav > li > a {
        font-size: px;
      }
    }
  </style>

</head>

<body>

<!-- Vertical Navigation Bar -->
<div class="navbar navbar-custom">
  <div class="container">
    <ul class="nav navbar-nav">
      <li><a href="customerhome.jsp">Home</a></li>
      <li><a href="customerprofile.jsp">Student Profile</a></li>
      <li><a href="teamselection.jsp">Team Selection</a></li>
      <li><a href="projectselection.jsp">Project Selection</a></li>
      <li><a href="groupdiscussion.jsp">Group Discussion</a></li>
      <li><a href="projectsubmission.jsp">Project Submission</a></li>
      
      <li><a href="customerlogout">Logout</a></li>
    </ul>
  </div>
</div>

</body>
</html>
