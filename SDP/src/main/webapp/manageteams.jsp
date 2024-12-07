<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Manage Teams</title>

    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Custom Styling -->
    <style>
        body {
            background-color: #f0f8ff;
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 600px;
            margin-top: 50px;
        }
        h2 {
            font-size: 2.5rem;
            color: #333;
            margin-bottom: 30px;
        }
        .form-group label {
            font-size: 1.2rem;
        }
        .form-group input {
            font-size: 1rem;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .btn {
            font-size: 1rem;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            width: 100%;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>

    <!-- Include jQuery and Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</head>
<body>

    <!-- Include the Admin Navbar -->
    <%@ include file="adminnavebar.jsp" %>

    <div class="container">
        <h2 class="text-center">Manage Teams</h2>

        <!-- Admin Form to Set Number of Teams -->
        <form action="manageteams" method="post">
            <div class="form-group">
                <label for="numTeams">Enter the number of teams:</label>
                <input type="number" id="numTeams" name="numTeams" min="1" required>
            </div>
            <button type="submit" class="btn">Set Number of Teams</button>
        </form>
    </div>

</body>
</html>
