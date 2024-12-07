<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<!-- Add CSS for background image and white font color -->
<style>
    body {
        background-image: url('images/HomeImage.jpg'); /* Replace with your image path */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
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

    h3, h4 {
        font-size: 28px;
        font-weight: bold;
        color: #f39c12;
        text-transform: uppercase;
        text-align: center;
        margin-top: 80px; /* Added margin to account for fixed navbar */
        margin-bottom: 20px; /* Added margin to space out the title from the form */
    }
</style>

</head>
<body>
<%@include file="mainnavebar.jsp" %>
<h4><c:out value="${message}"></c:out><br/></h4>
<h3>Customer Login Form</h3>
<div class="container">
    <form method="post" action="checkcustomerlogin">
        <div class="form-group">
            <label for="cemail">Enter Email</label>
            <input type="text" id="cemail" class="form-control" name="cemail" required/>
        </div>

        <div class="form-group">
            <label for="cpwd">Enter Password</label>
            <input type="password" id="cpwd" class="form-control" name="cpwd" required/>
        </div>

        <div class="button-container">
            <input type="submit" value="Login" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-success"/>
        </div>
    </form>
</div>
</body>

</html>
