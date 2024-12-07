<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF8">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title>JFSD</title>
    <style>
        .navbar {
            background-color: #2c3e50; /* Dark navbar background */
            overflow: hidden;
            font-family: Arial, sans-serif;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        .navbar a.active {
            background-color: #4CAF50;
            color: white;
        }

        .navbar {
            text-align: center; /* Centers the navbar items */
        }

        /* Add spacing between navbar items */
        .navbar a {
            margin-right: 20px; /* Space between links */
        }
    </style>
</head>

<body bgcolor="lightblue">

    <!-- Horizontal Navbar -->
    <div class="navbar">
        <h2 style="color:white; text-align:center;">Faculty Page</h2>
        <a href="adminhome">Home</a>
        <a href="viewallcustomers">Students Registered</a>
        <a href="manageteams">Manage Teams</a>
        <a href="manageprojects">Manage Projects</a>
        
        <a href="viewprojects">View Project Submissions</a>
        <a href="adminlogin">Logout</a>
    </div>

</body>
</html>
