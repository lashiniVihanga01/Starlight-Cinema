<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Booking Confirmation</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <!-- PayPal JavaScript SDK -->
  <script src="https://www.paypal.com/sdk/js?client-id=AWPdrK0pQc-g7WgNkxxXllwuaZiBnGs6a6kwD5PCLpde3tX8EUXgM2IxOS43c5-lxo2vMdpqooKqmNX7&currency=USD"></script>
</head>
<body class="bg-gray-50 min-h-screen flex flex-col">

<!-- Navbar -->
<nav class="bg-blue-800 p-4 shadow-md">
  <div class="max-w-6xl mx-auto flex justify-between items-center">
    <div class="flex items-center">
      <a href="index.jsp" class="text-white text-2xl font-semibold">Starlight Cinema</a>
    </div>
    <div>
      <a href="index.jsp" class="text-white mx-4 hover:text-yellow-300 transition">Home</a>
      <a href="contact.jsp" class="text-white mx-4 hover:text-yellow-300 transition">Contact Us</a>
    </div>
  </div>
</nav>

<!-- Main Content -->
<div class="flex-grow max-w-5xl mx-auto p-8 bg-white shadow-lg rounded-lg mt-10">
  <h1 class="text-3xl font-semibold text-gray-800 mb-6">Booking Confirmation</h1>

  <%
    String userName = request.getParameter("user_name");
    String userEmail = request.getParameter("user_email");
    String ticketPrice = request.getParameter("ticket_price");
    String movieHall = request.getParameter("movie_hall");
    String movieTime = request.getParameter("movie_time");
    String selectedSeats = request.getParameter("selected_seats");

    if (selectedSeats == null || selectedSeats.trim().isEmpty()) {
      out.println("<p class='text-red-500'>No seats were selected. Please go back and select seats.</p>");
    } else {
  %>

  <!-- Booking Details -->
  <div id="bookingDetails" class="bg-gray-100 p-6 rounded-lg shadow-md">
    <p class="text-lg font-medium text-gray-700">Name: <%= userName %></p>
    <p class="text-lg font-medium text-gray-700">Email: <%= userEmail %></p>
    <p class="text-lg font-medium text-gray-700">Ticket Price: $<%= ticketPrice %></p>
    <p class="text-lg font-medium text-gray-700">Hall: <%= movieHall %></p>
    <p class="text-lg font-medium text-gray-700">Time: <%= movieTime %></p>
    <p class="text-lg font-medium text-gray-700">Seats: <%= selectedSeats %></p>
  </div>

  <!-- PayPal Button -->
  <div id="paypal-button-container" class="mt-6"></div>

  <!-- Payment Success Message -->
  <div id="successMessage" class="hidden mt-6 text-green-500 text-lg font-semibold">
    Booking saved successfully! We have sent you an invoice.
    <!-- Popcorn Image -->
    <img src="img/popcorn.png" alt="Popcorn" class="mt-4 w-32 mx-auto">
  </div>

  <script>
    // Render PayPal button
    paypal.Buttons({
      createOrder: (data, actions) => {
        return actions.order.create({
          purchase_units: [{
            amount: {
              value: "<%= ticketPrice %>" // Ticket price from server-side
            }
          }]
        });
      },
      onApprove: (data, actions) => {
        return actions.order.capture().then(details => {
          console.log('Payment successful', details);

          // Make a request to save booking data in the database
          const xhr = new XMLHttpRequest();
          xhr.open("POST", "ConfirmBooking.jsp", true);
          xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
          xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
              document.getElementById('successMessage').classList.remove('hidden');
              console.log('Server Response:', xhr.responseText);
            }
          };
          xhr.send(`action=save&user_name=${encodeURIComponent('<%= userName %>')}&user_email=${encodeURIComponent('<%= userEmail %>')}&ticket_price=${encodeURIComponent('<%= ticketPrice %>')}&movie_hall=${encodeURIComponent('<%= movieHall %>')}&movie_time=${encodeURIComponent('<%= movieTime %>')}&selected_seats=${encodeURIComponent('<%= selectedSeats %>')}`);
        });
      },
      onError: (err) => {
        console.error('Payment error', err);
      }
    }).render('#paypal-button-container');
  </script>

  <%
    String action = request.getParameter("action");
    if ("save".equals(action)) {
      Connection conn = null;
      PreparedStatement stmt = null;

      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/admindb", "root", "root");

        String query = "INSERT INTO book_confirmed (user_name, user_email, ticket_price, movie_hall, movie_time, selected_seats) " +
                "VALUES (?, ?, ?, ?, ?, ?)";
        stmt = conn.prepareStatement(query);
        stmt.setString(1, request.getParameter("user_name"));
        stmt.setString(2, request.getParameter("user_email"));
        stmt.setString(3, request.getParameter("ticket_price"));
        stmt.setString(4, request.getParameter("movie_hall"));
        stmt.setString(5, request.getParameter("movie_time"));
        stmt.setString(6, request.getParameter("selected_seats"));

        int rowsInserted = stmt.executeUpdate();

        if (rowsInserted > 0) {
          out.println("<script>console.log('Booking saved successfully! We have sent you an invoice.');</script>");
        } else {
          out.println("<script>console.error('Failed to save booking.');</script>");
        }
      } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>console.error('An error occurred: " + e.getMessage() + "');</script>");
      } finally {
        if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
        if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
      }
    }
  %>

  <% } %>

  <div class="mt-6">
    <a href="feedback.jsp" class="bg-blue-600 text-white px-6 py-3 rounded-lg shadow-md hover:bg-blue-700 transition">Add a Feedback</a>
  </div>
</div>

<!-- Footer -->
<footer class="bg-gray-800 text-white py-6 mt-auto">
  <div class="max-w-6xl mx-auto text-center">
    <p class="text-sm">© 2024 Starlight Cinema. All rights reserved.</p>
  </div>
</footer>

</body>
</html>
