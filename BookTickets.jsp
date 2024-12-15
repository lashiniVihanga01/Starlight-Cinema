<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Tickets</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-to-r from-indigo-600 via-blue-400 to-purple-500 min-h-screen flex flex-col">

<!-- Navbar -->
<nav class="bg-gray-800 p-6 shadow-xl">
    <div class="max-w-6xl mx-auto flex justify-between items-center">
        <div class="flex items-center">
            <a href="index.jsp" class="text-white text-2xl font-extrabold hover:text-yellow-400 transition-colors">Starlight Cinema</a>
        </div>
        <div class="space-x-8">
            <a href="index.jsp" class="text-white text-lg hover:text-yellow-400 transition-colors">Home</a>
            <a href="contact.jsp" class="text-white text-lg hover:text-yellow-400 transition-colors">Contact Us</a>
            <a href="about.jsp" class="text-white text-lg hover:text-yellow-400 transition-colors">About Us</a>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="flex-grow max-w-5xl mx-auto p-8 bg-white shadow-xl rounded-xl mt-10 mb-10">
    <h1 class="text-4xl font-extrabold mb-6 text-center text-gray-800">Book Your Tickets</h1>

    <%
        String message = "";
        boolean showForm = true;

        if (request.getMethod().equalsIgnoreCase("POST")) {
            String userName = request.getParameter("user_name");
            String userEmail = request.getParameter("user_email");
            int movieId = Integer.parseInt(request.getParameter("movie_id"));
            int numTickets = Integer.parseInt(request.getParameter("num_tickets"));
            double ticketPrice = Double.parseDouble(request.getParameter("ticket_price"));
            double totalPrice = ticketPrice * numTickets;
            String movieHall = request.getParameter("movie_hall");
            String movieTime = request.getParameter("movie_time");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/admindb", "root", "root");

                String insertQuery = "INSERT INTO bookings (movie_id, user_name, user_email, num_tickets, total_price, movie_hall, movie_time) VALUES (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(insertQuery);
                stmt.setInt(1, movieId);
                stmt.setString(2, userName);
                stmt.setString(3, userEmail);
                stmt.setInt(4, numTickets);
                stmt.setDouble(5, totalPrice);
                stmt.setString(6, movieHall);
                stmt.setString(7, movieTime);

                int rows = stmt.executeUpdate();
                conn.close();

                if (rows > 0) {
                    message = "Booking successful! Redirecting to seat availability.";
                    showForm = false;

                    // Redirect to SeatAvailability.jsp with query parameters
                    response.sendRedirect("SeatAvailability.jsp?user_name=" + userName +
                            "&user_email=" + userEmail +
                            "&ticket_price=" + ticketPrice +
                            "&movie_hall=" + movieHall +
                            "&movie_time=" + movieTime);
                } else {
                    message = "Error booking tickets. Please try again.";
                }
            } catch (Exception e) {
                e.printStackTrace();
                message = "Error: " + e.getMessage();
            }
        }

        if (!message.isEmpty()) {
    %>
    <div class="mb-6 text-center">
        <p class="<%= showForm ? "text-red-500" : "text-green-500" %> font-medium text-lg"><%= message %></p>
    </div>
    <% } %>

    <% if (showForm) {
        int movieId = Integer.parseInt(request.getParameter("movie_id"));
        String title = "";
        double ticketPrice = 0.0;
        String trailerUrl = "";
        String photoPath = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/admindb", "root", "root");

            String query = "SELECT title, ticket_price, trailer_url, photo_path FROM movies WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, movieId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                title = rs.getString("title");
                ticketPrice = rs.getDouble("ticket_price");
                trailerUrl = rs.getString("trailer_url");
                photoPath = rs.getString("photo_path");
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>

    <!-- Movie Details Section -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
        <!-- Movie Photo -->
        <div class="col-span-1">
            <img src="<%= photoPath %>" alt="<%= title %> Photo" class="w-full rounded-xl shadow-xl transform hover:scale-105 transition-all">
        </div>

        <!-- Movie Details -->
        <div class="col-span-2">
            <h2 class="text-3xl font-bold mb-4 text-gray-900"><%= title %></h2>
            <div class="aspect-w-16 aspect-h-9 mb-6">
                <iframe src="<%= trailerUrl.replace("watch?v=", "embed/") %>" class="w-full h-64 rounded-xl shadow-xl" frameborder="0" allowfullscreen></iframe>
            </div>
            <p class="text-gray-700 mb-4">Price per Ticket: <span class="font-bold text-blue-600">$<%= ticketPrice %></span></p>
        </div>
    </div>

    <!-- Booking Form -->
    <form action="BookTickets.jsp" method="post" class="mt-6 space-y-6">
        <input type="hidden" name="movie_id" value="<%= movieId %>">
        <input type="hidden" name="ticket_price" value="<%= ticketPrice %>">

        <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mb-6">
            <div>
                <label class="block text-gray-700 font-medium text-lg">Your Name <i class="fas fa-user"></i></label>
                <input type="text" name="user_name" class="w-full border rounded-lg p-4 shadow-sm focus:ring-2 focus:ring-indigo-500" required>
            </div>

            <div>
                <label class="block text-gray-700 font-medium text-lg">Your Email <i class="fas fa-envelope"></i></label>
                <input type="email" name="user_email" class="w-full border rounded-lg p-4 shadow-sm focus:ring-2 focus:ring-indigo-500" required>
            </div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mb-6">
            <div>
                <label class="block text-gray-700 font-medium text-lg">Number of Tickets <i class="fas fa-ticket-alt"></i></label>
                <input type="number" name="num_tickets" class="w-full border rounded-lg p-4 shadow-sm focus:ring-2 focus:ring-indigo-500" min="1" required>
            </div>

            <div>
                <label class="block text-gray-700 font-medium text-lg">Price per Ticket</label>
                <input type="text" class="w-full border rounded-lg p-4 shadow-sm focus:ring-2 focus:ring-indigo-500" value="$<%= ticketPrice %>" readonly>
            </div>
        </div>

        <div class="mb-6">
            <label class="block text-gray-700 font-medium text-lg">Select Hall</label>
            <select name="movie_hall" class="w-full border rounded-lg p-4 shadow-sm focus:ring-2 focus:ring-indigo-500" required>
                <option value="Colombo">Colombo</option>
                <option value="Gampaha">Gampaha</option>
                <option value="Kurunegala">Kurunegala</option>
            </select>
        </div>

        <div class="mb-6">
            <label class="block text-gray-700 font-medium text-lg">Select Time</label>
            <select name="movie_time" class="w-full border rounded-lg p-4 shadow-sm focus:ring-2 focus:ring-indigo-500" required>
                <option value="10:00 AM">10:00 AM</option>
                <option value="1:00 PM">1:00 PM</option>
                <option value="4:00 PM">4:00 PM</option>
                <option value="7:00 PM">7:00 PM</option>
            </select>
        </div>

        <button type="submit" class="w-full bg-indigo-600 text-white py-4 rounded-lg hover:bg-indigo-700 transition-all shadow-lg">
            Book Now <i class="fas fa-arrow-right"></i>
        </button>
    </form>
    <% } %>
</div>

<!-- Footer -->
<footer class="bg-gray-800 text-white py-6 mt-auto">
    <div class="max-w-6xl mx-auto text-center">
        <p class="text-sm">© 2024 Starlight Cinema. All rights reserved.</p>
    </div>
</footer>

</body>
</html>
