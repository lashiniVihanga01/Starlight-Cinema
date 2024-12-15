<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Seat Availability</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

  <style>
    .seat {
      width: 40px;
      height: 40px;
      margin: 5px;
      display: inline-block;
      text-align: center;
      line-height: 40px;
      border-radius: 8px;
      cursor: pointer;
      transition: background-color 0.3s, transform 0.2s;
    }
    .seat:hover {
      transform: scale(1.1);
    }
    .available {
      background-color: #4CAF50;
      color: white;
    }
    .selected {
      background-color: #FFC107;
      color: black;
    }
    .booked {
      background-color: #F44336;
      color: white;
      cursor: not-allowed;
    }

    /* Movie Hall Marquee */
    .marquee {
      font-size: 2rem;
      font-weight: bold;
      text-align: center;
      color: #FFD700;
      letter-spacing: 5px;
      text-transform: uppercase;
      animation: marqueeAnimation 10s infinite;
    }

    @keyframes marqueeAnimation {
      0% {
        transform: translateX(100%);
      }
      100% {
        transform: translateX(-100%);
      }
    }

    /* Navbar Customization */
    .navbar-link {
      text-decoration: none;
      color: #ffffff;
      font-weight: bold;
    }

    .navbar-link:hover {
      color: #FF5733;
    }

    /* Footer Style */
    footer {
      background-color: #333333;
    }

    footer a {
      color: #FFD700;
      text-decoration: none;
    }
  </style>

  <script>
    function toggleSeat(seat) {
      if (!seat.classList.contains('booked')) {
        seat.classList.toggle('selected');
      }
    }

    function getSelectedSeats() {
      const selected = Array.from(document.querySelectorAll('.seat.selected'));
      return selected.map(seat => seat.textContent).join(',');
    }

    function submitBooking() {
      document.getElementById('selectedSeatsInput').value = getSelectedSeats();
      document.getElementById('bookingForm').submit();
    }
  </script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col font-sans">

<!-- Movie Hall Marquee -->
<div class="bg-black text-white py-4">
  <div class="marquee">Now Showing: All Eyes This Way Please</div>
</div>

<!-- Navbar -->
<nav class="bg-gray-900 p-4 shadow-lg">
  <div class="max-w-6xl mx-auto flex justify-between items-center">
    <div class="flex items-center">
      <a href="index.jsp" class="text-light text-2xl font-bold navbar-link">Starlight Cinema</a>
    </div>
    <div>
      <a href="index.jsp" class="text-light mx-4 navbar-link">Home</a>
      <a href="contact.jsp" class="text-light mx-4 navbar-link">Contact Us</a>
    </div>
  </div>
</nav>

<!-- Main Content -->
<div class="flex-grow max-w-5xl mx-auto p-8 bg-white shadow-lg rounded-xl mt-10">
  <h1 class="text-4xl font-semibold text-center mb-8 text-gray-800">Select Your Seats</h1>

  <%
    // Retrieve booking details
    String userName = request.getParameter("user_name");
    String userEmail = request.getParameter("user_email");
    double ticketPrice = Double.parseDouble(request.getParameter("ticket_price"));
    String movieHall = request.getParameter("movie_hall");
    String movieTime = request.getParameter("movie_time");

    // Fetch already booked seats from the database
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    String bookedSeats = "";

    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      conn = DriverManager.getConnection(
              "jdbc:mysql://localhost:3306/admindb", "root", "root");

      String query = "SELECT selected_seats FROM book_confirmed WHERE movie_hall = ? AND movie_time = ?";
      stmt = conn.prepareStatement(query);
      stmt.setString(1, movieHall);
      stmt.setString(2, movieTime);
      rs = stmt.executeQuery();

      while (rs.next()) {
        bookedSeats += rs.getString("selected_seats") + ",";
      }
      if (bookedSeats.endsWith(",")) {
        bookedSeats = bookedSeats.substring(0, bookedSeats.length() - 1);
      }
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (rs != null) rs.close();
      if (stmt != null) stmt.close();
      if (conn != null) conn.close();
    }

    String[] bookedSeatsArray = bookedSeats.split(",");
  %>

  <!-- Booking Details -->
  <div class="bg-gray-100 p-6 rounded-lg mb-8 shadow-md">
    <p class="text-xl text-gray-700"><i class="fas fa-user"></i> Name: <%= userName %></p>
    <p class="text-xl text-gray-700"><i class="fas fa-envelope"></i> Email: <%= userEmail %></p>
    <p class="text-xl text-gray-700"><i class="fas fa-ticket-alt"></i> Ticket Price: $<%= ticketPrice %></p>
    <p class="text-xl text-gray-700"><i class="fas fa-film"></i> Hall: <%= movieHall %></p>
    <p class="text-xl text-gray-700"><i class="fas fa-clock"></i> Time: <%= movieTime %></p>
  </div>

  <!-- Seat Layout -->
  <div class="grid grid-cols-10 gap-4 mb-6">
    <%
      for (int i = 1; i <= 50; i++) { // Generate 50 seats
        String seatId = "S" + i;
        boolean isBooked = false;

        for (String seat : bookedSeatsArray) {
          if (seatId.equals(seat)) {
            isBooked = true;
            break;
          }
        }

        String seatClass = isBooked ? "booked" : "available";
    %>
    <div
            class="seat <%= seatClass %>"
            onclick="toggleSeat(this)"
    ><%= seatId %></div>
    <% } %>
  </div>

  <!-- Booking Form -->
  <form id="bookingForm" action="ConfirmBooking.jsp" method="post">
    <input type="hidden" name="user_name" value="<%= userName %>">
    <input type="hidden" name="user_email" value="<%= userEmail %>">
    <input type="hidden" name="ticket_price" value="<%= ticketPrice %>">
    <input type="hidden" name="movie_hall" value="<%= movieHall %>">
    <input type="hidden" name="movie_time" value="<%= movieTime %>">
    <input type="hidden" id="selectedSeatsInput" name="selected_seats" value="">

    <button type="button" onclick="submitBooking()" class="w-full bg-gradient-to-r from-blue-600 to-indigo-600 text-white py-3 rounded-lg hover:bg-indigo-700 focus:outline-none">
      <i class="fas fa-check-circle"></i> Confirm Booking
    </button>
  </form>
</div>

<!-- Footer -->
<footer class="bg-gray-900 text-white py-6 mt-auto">
  <div class="max-w-6xl mx-auto text-center">
    <p class="text-sm">© 2024 <a href="https://www.abccinema.com" class="hover:text-gray-300">Starlight Cinema</a>. All rights reserved.</p>
    <p class="text-sm mt-2"><i class="fas fa-map-marker-alt"></i> Visit us at: 123 Cinema Street, Film City</p>
  </div>
</footer>

</body>
</html>
