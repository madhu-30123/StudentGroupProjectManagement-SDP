<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Login</title>
<%@include file="mainnavebar.jsp" %>

<!-- Add CSS for background image and white font color -->
<style>
    body {
        background-image: url('images/HomeImage.jpg'); /* Replace with your image path */
        background-size: cover;
        background-position: center;
        font-family: Arial, sans-serif;
        color: white; /* Set the font color of the entire page to white */
    }

    .container {
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background for the form container */
        padding: 20px;
        border-radius: 10px;
        max-width: 400px;
        margin: 90px auto;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        color: black; /* Set form text color to black for readability */
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        font-weight: bold;
        color: black; /* Ensure the labels inside the form container are black */
    }

    .form-control {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .button-container {
        display: flex;
        justify-content: space-between;
    }

    .btn {
        padding: 10px 20px;
        border-radius: 5px;
        border: none;
        cursor: pointer;
        font-size: 16px;
    }

    .btn-success {
        background-color: #28a745;
        color: white;
    }

    .btn-success:hover {
        background-color: #218838;
    }

    h3 {
        font-size: 28px;
        font-weight: bold;
        text-transform: uppercase;
        text-align: center;
        margin-top: 20px; /* Added margin to account for fixed navbar */
        margin-bottom: 20px; /* Added margin to space out the title from the form */
    }
</style>

</head>
<body>

<h3>Admin Login Form</h3>
<div class="container">
    <form method="post" action="checkadminlogin">
        <div class="form-group">
            <label for="auname">Enter Username</label>
            <input type="text" id="auname" class="form-control" name="auname" required/>
        </div>

        <div class="form-group">
            <label for="apwd">Enter Password</label>
            <input type="password" id="apwd" class="form-control" name="apwd" required/>
        </div>

        <div class="button-container">
            <input type="submit" value="Login" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-success"/>
        </div>
    </form>
</div>

</body>

</html>
