<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.springboot.model.Customer" %>

<%
    // Fetch customer (student) object from session
    Customer c = (Customer) session.getAttribute("customer");
    String message = "";
    
    // Check if the form is submitted
    String selectedTeam = request.getParameter("teamNumber");
    
    if (selectedTeam != null && !selectedTeam.isEmpty()) {
        // Store the selected team in the session (you can later use it to update in DB)
        session.setAttribute("selectedTeam", selectedTeam);
        
        // Show success message
        message = "Team " + selectedTeam + " selected successfully!";
        
        // Redirect to customerhome.jsp after 2 seconds
        response.setHeader("Refresh", "2; URL=customerhome.jsp");
    }
    
    // Retrieve the number of teams from the session
    Integer numTeams = (Integer) session.getAttribute("numTeams");
    if (numTeams == null) {
        numTeams = 20; // Default to 20 if not set (or handle the error case as needed)
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Team Selection</title>
    <style>
        /* Apply a simple layout style */
        body {
            background-color: #f1f1f1;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 16px;
        }

        select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
            width: 100%;
        }

        button:hover {
            background-color: #45a049;
        }

        .message {
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
            color: #555;
        }

        .navbar-custom {
            background-color: #000080; /* Navy blue background */
            padding: 15px;
            text-align: center;
            font-size: 18px;
            color: white;
        }
    </style>
</head>
<body>

   

    <div class="container">
        <h2>Select Your Team</h2>

        <%-- Display success or error message --%>
        <div class="message">
            <%= message %>
        </div>

        <%-- Team selection form --%>
        <form method="POST">
            <label for="teamNumber">Choose your team number (1-<%= numTeams %>):</label>
            <select name="teamNumber" id="teamNumber" required>
                <option value="">Select a Team</option>
                <% 
                    for (int i = 1; i <= numTeams; i++) {
                        out.print("<option value='" + i + "'>Team " + i + "</option>");
                    }
                %>
            </select>

            <button type="submit">Submit</button>
        </form>
    </div>

</body>
</html>
