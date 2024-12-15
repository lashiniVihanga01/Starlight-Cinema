<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback | Movie Booking System</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            color: #333333;
        }
        .navbar-link:hover {
            text-decoration: underline;
        }
        .navbar-btn {
            background-color: #3182ce;
            color: white;
            padding: 10px 20px;
            border-radius: 50px;
            transition: all 0.3s ease;
        }
        .navbar-btn:hover {
            background-color: #2c5282;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            transform: scale(1.05);
        }
        .movie-card:hover {
            transform: translateY(-15px);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        footer {
            background-color: #1f2937;
            color: #e5e7eb;
        }
        .icon {
            font-size: 1.25rem;
            margin-right: 0.5rem;
        }
    </style>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">

<!-- Navbar -->
<nav class="bg-dark p-6 shadow-lg">
    <div class="max-w-6xl mx-auto flex justify-between items-center">
        <div class="flex items-center">
            <a href="index.jsp" class="text-light text-2xl font-bold navbar-link">Starlight Cinema</a>
        </div>
        <div class="space-x-6">
            <a href="index.jsp" class="navbar-btn">Home</a>
            <a href="contact.jsp" class="navbar-btn">Contact Us</a>
            <a href="about.jsp" class="navbar-btn">About Us</a>
            <a href="feedback.jsp" class="navbar-btn">Review and Feedbacks</a>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="max-w-6xl mx-auto p-8 mt-8">

    <!-- Feedback Form -->
    <h2 class="text-3xl font-bold text-center mb-6">Share Your Feedback</h2>
    <form action="feedback.jsp" method="post" class="bg-white p-6 rounded shadow-lg space-y-6">
        <div>
            <label for="name" class="block text-lg font-semibold">Name</label>
            <input type="text" id="name" name="name" class="w-full px-4 py-2 border rounded" required>
        </div>
        <div>
            <label for="email" class="block text-lg font-semibold">Email</label>
            <input type="email" id="email" name="email" class="w-full px-4 py-2 border rounded" required>
        </div>
        <div>
            <label for="review" class="block text-lg font-semibold">Review</label>
            <textarea id="review" name="review" rows="4" class="w-full px-4 py-2 border rounded" required></textarea>
        </div>
        <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded hover:bg-blue-600">Submit Feedback</button>
    </form>

    <!-- Feedback List -->
    <h2 class="text-3xl font-bold text-center mt-12 mb-6">Recent Feedbacks</h2>
    <div>
        <%
            try {
                // Connect to the database
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "root");

                // If the form is submitted, insert the feedback into the database
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String review = request.getParameter("review");

                if (name != null && email != null && review != null) {
                    String insertQuery = "INSERT INTO feedback (name, email, review) VALUES (?, ?, ?)";
                    PreparedStatement insertStmt = conn.prepareStatement(insertQuery);
                    insertStmt.setString(1, name);
                    insertStmt.setString(2, email);
                    insertStmt.setString(3, review);
                    insertStmt.executeUpdate();
                    out.println("<p class='text-green-500 text-center'>Thank you for your feedback!</p>");
                }

                // Fetch all feedbacks from the database
                String selectQuery = "SELECT * FROM feedback ORDER BY submitted_at DESC";
                PreparedStatement stmt = conn.prepareStatement(selectQuery);
                ResultSet rs = stmt.executeQuery();

                while (rs.next()) {
                    String feedbackName = rs.getString("name");
                    String feedbackEmail = rs.getString("email");
                    String feedbackReview = rs.getString("review");
                    String feedbackTime = rs.getString("submitted_at");
        %>
        <div class="bg-white p-4 mb-6 rounded shadow-lg">
            <div class="text-lg font-semibold"><%= feedbackName %> <span class="text-sm text-gray-500">(<%= feedbackEmail %>)</span></div>
            <p class="mt-2"><%= feedbackReview %></p>
            <p class="text-sm text-gray-500 mt-2">Submitted on: <%= feedbackTime %></p>
        </div>
        <%
                }
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p class='text-red-500 text-center'>Error loading feedbacks: " + e.getMessage() + "</p>");
            }
        %>
    </div>

</div>

<!-- Footer -->
<footer class="bg-dark text-light py-6 mt-auto">
    <div class="max-w-6xl mx-auto text-center">
        <p class="text-sm">
            <i class="fas fa-copyright"></i> 2024 Starlight Cinema. All rights reserved.
        </p>
        <div class="flex justify-center space-x-6 mt-4">
            <a href="#" class="text-light hover:text-yellow-400">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a href="#" class="text-light hover:text-yellow-400">
                <i class="fab fa-twitter"></i>
            </a>
            <a href="#" class="text-light hover:text-yellow-400">
                <i class="fab fa-instagram"></i>
            </a>
        </div>
    </div>
</footer>

</body>
</html>
