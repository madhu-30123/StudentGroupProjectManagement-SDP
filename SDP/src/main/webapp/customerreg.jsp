<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Signin</title>
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
        background-color: #ffffff; /* White background for the form */
        padding: 20px;
        border-radius: 10px;
        max-width: 600px;
        margin: 50px auto;
        color: black; /* Set form text color to black for readability */
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        font-weight: bold;
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
        margin-bottom: auto;
        margin-top: auto;
    }
</style>

</head>
<body>
<h3>Student Sign-in</h3>
<div class="container">
    <form method="post" action="insertcustomer">
        <div class="form-group">
            <label for="cname">Enter Name</label>
            <input type="text" id="cname" class="form-control" name="cname" required/>
        </div>

        <div class="form-group">
            <label for="cid">Enter ID</label>
            <input type="text" id="cid" class="form-control" name="cid" required/>
        </div>

        

        <div class="form-group">
            <label for="cemail">Enter Email ID</label>
            <input type="email" id="cemail" class="form-control" name="cemail" required/>
        </div>

        <div class="form-group">
            <label for="cpwd">Enter Password</label>
            <input type="password" id="cpwd" class="form-control" name="cpwd" required/>
        </div>

        <div class="form-group">
            <label for="cphone">Enter Phone Number</label>
            <input type="text" id="cphone" class="form-control" name="cphone" required/>
        </div>

        <div class="button-container">
            <input type="submit" value="Register" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-success"/>
        </div>
    </form>
</div>

</body>
</html>
