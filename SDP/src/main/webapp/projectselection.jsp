<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.springboot.model.Customer" %>

<%
    // Fetch customer (student) object from session
    Customer c = (Customer) session.getAttribute("customer");
    String message = "";
    String selectedProject = "";

    // Check if the form is submitted
    if (request.getParameter("submit") != null) {
        selectedProject = request.getParameter("selectedProject");

        if (selectedProject != null && !selectedProject.isEmpty()) {
            // Store the selected project in the session (you can later use it to update in DB)
            session.setAttribute("selectedProject", selectedProject);

            // Show success message
            message = "Project selected successfully!";

            // Redirect to customerhome.jsp after 2 seconds
            response.setHeader("Refresh", "2; URL=customerhome.jsp");
        } else {
            message = "Please select a project.";
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Project Selection</title>
    <style>
        /* Apply a navy blue background for the entire page */
        body {
            background-color: #000080; /* Navy blue */
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Container for the whole page */
        .container {
            max-width: 1100px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .message {
            text-align: center;
            font-size: 18px;
            color: #4CAF50;
            margin-top: 20px;
        }

        .project-list {
            list-style: none;
            padding: 0;
        }

        .project-item {
            background-color: #fff;
            padding: 15px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .project-item:hover {
            background-color: #f4f4f4;
        }

        .project-description {
            display: none;
            margin-top: 10px;
            padding: 10px;
            background-color: #f1f1f1;
            border-radius: 8px;
            font-size: 14px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 12px 24px;
            border: none;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
            margin-top: 20px;
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
        <h2>Select Your Project</h2>

        <%-- Display success or error message --%>
        <div class="message">
            <%= message %>
        </div>

        <%-- Project selection form --%>
        <form method="POST">
            <ul class="project-list">
                <li class="project-item" onclick="showDescription('ecommerce')">
                    E-Commerce Website
                    <div id="ecommerce" class="project-description">
                        Develop a fully functional e-commerce website.
                    </div>
                </li>
                <li class="project-item" onclick="showDescription('portfolio')">
                    Portfolio Website
                    <div id="portfolio" class="project-description">
                        Create a personal portfolio website to showcase projects.
                    </div>
                </li>
                <li class="project-item" onclick="showDescription('blogplatform')">
                    Blog Platform
                    <div id="blogplatform" class="project-description">
                        Build a platform for users to create and share blogs.
                    </div>
                </li>
                <li class="project-item" onclick="showDescription('learningplatform')">
                    Online Learning Platform
                    <div id="learningplatform" class="project-description">
                        Develop a website for online courses and tutorials.
                    </div>
                </li>
                <li class="project-item" onclick="showDescription('socialmedia')">
                    Social Media Website
                    <div id="socialmedia" class="project-description">
                        Create a website for users to connect and share content.
                    </div>
                </li>
                <li class="project-item" onclick="showDescription('travelbooking')">
                    Travel Booking Website
                    <div id="travelbooking" class="project-description">
                        Build a site for booking travel and accommodations.
                    </div>
                </li>
                <li class="project-item" onclick="showDescription('recipesharing')">
                    Recipe Sharing Website
                    <div id="recipesharing" class="project-description">
                        Create a platform for users to share and discover recipes.
                    </div>
                </li>
                <li class="project-item" onclick="showDescription('eventmanagement')">
                    Event Management Website
                    <div id="eventmanagement" class="project-description">
                        Develop a website for managing events and registrations.
                    </div>
                </li>
                <li class="project-item" onclick="showDescription('jobboard')">
                    Job Board
                    <div id="jobboard" class="project-description">
                        Create a job listing platform for employers and job seekers.
                    </div>
                </li>
                <li class="project-item" onclick="showDescription('fitnesstracker')">
                    Fitness Tracker
                    <div id="fitnesstracker" class="project-description">
                        Build a site for users to track their fitness goals and progress.
                    </div>
                </li>
            </ul>

            <input type="hidden" name="selectedProject" id="selectedProject" />

            <button type="submit" name="submit">Submit</button>
        </form>
    </div>

    <script>
        // Function to show the project description
        function showDescription(projectId) {
            // Hide all descriptions first
            let descriptions = document.querySelectorAll('.project-description');
            descriptions.forEach(function (desc) {
                desc.style.display = 'none';
            });

            // Show the description of the selected project
            let selectedDescription = document.getElementById(projectId);
            selectedDescription.style.display = 'block';

            // Set the hidden field value to the selected project name
            document.getElementById('selectedProject').value = projectId;
        }
    </script>
</body>
</html>
