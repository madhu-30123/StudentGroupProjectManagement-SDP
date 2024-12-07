<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.springboot.model.Customer" %>

<%
    // Fetch customer (student) object from session
    Customer c = (Customer) session.getAttribute("customer");

    // Check if form is submitted
    String message = "";
    String teamMessage = "";
    
    if (request.getParameter("submit") != null) {
        teamMessage = request.getParameter("message");

        if (teamMessage != null && !teamMessage.isEmpty()) {
            // Process the team message here (you can save it in DB or send it to the team's group)
            message = "Message sent to your team successfully!";

            // Redirect to customerhome.jsp after 2 seconds
            response.setHeader("Refresh", "2; URL=customerhome.jsp"); 
        } else {
            message = "Please enter a message to send.";
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Group Discussion</title>
    <style>
        body {
            background-image: url('background.jpg'); /* Set your background image */
            background-size: cover;
            background-position: center;
            font-family: 'Arial', sans-serif;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 900px;
            margin: 100px auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.6);
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            color: #fff;
        }

        .message {
            text-align: center;
            font-size: 18px;
            margin-top: 20px;
            color: #4CAF50;
        }

        .chat-box {
            width: 100%;
            height: 300px;
            margin-bottom: 20px;
            padding: 10px;
            background-color: #f0f0f0;
            border-radius: 8px;
            overflow-y: scroll;
            color: #333;
        }

        .chat-box p {
            padding: 5px;
            border-bottom: 1px solid #ddd;
        }

        .chat-box p.student {
            color: #4CAF50; /* Green color for student messages */
        }

        .chat-box p.team {
            color: #2196F3; /* Blue color for team messages */
        }

        input[type="text"] {
            width: 80%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            width: 18%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #45a049;
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
        <h2>Group Discussion</h2>

        <div class="message">
            <%= message %>
        </div>

        <div class="chat-box" id="chatBox">
            <!-- Previous chat messages will be displayed here -->
            <p class="student">Student: Hello Team! How's the progress?</p>
            <p class="team">Team: The project is going well. What about you?</p>
            <!-- Add more messages here dynamically -->
        </div>

        <form method="POST">
            <input type="text" name="message" id="message" placeholder="Type your message..." />
            <button type="submit" name="submit">Send Message</button>
        </form>
    </div>

</body>
</html>
