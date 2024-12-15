<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-blue-100 to-blue-200 min-h-screen flex items-center justify-center">
<div class="bg-white p-10 rounded-lg shadow-md w-96">
    <h1 class="text-3xl font-semibold text-center text-gray-800 mb-6">Welcome Back</h1>
    <p class="text-center text-gray-600 mb-6">Please log in to your account</p>
    <form action="login.jsp" method="POST">
        <div class="mb-4">
            <label class="block text-sm font-medium text-gray-700 mb-2" for="username">Username</label>
            <input type="text" name="username" id="username"
                   class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:ring-2 focus:ring-blue-400 focus:outline-none"
                   placeholder="Enter your username" required>
        </div>
        <div class="mb-6">
            <label class="block text-sm font-medium text-gray-700 mb-2" for="password">Password</label>
            <input type="password" name="password" id="password"
                   class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:ring-2 focus:ring-blue-400 focus:outline-none"
                   placeholder="Enter your password" required>
        </div>
        <button type="submit"
                class="w-full bg-blue-500 hover:bg-blue-600 text-white font-medium py-2 px-4 rounded-lg transition duration-200">
            Login
        </button>
    </form>
    <%
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            // Database connection and validation logic
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "root");
                String query = "SELECT * FROM users WHERE username = ? AND password = ?";
                PreparedStatement stmt = conn.prepareStatement(query);
                stmt.setString(1, username);
                stmt.setString(2, password);
                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    session.setAttribute("username", username); // Set the username in the session
                    response.sendRedirect("index.jsp"); // Redirect to index.jsp after successful login
                } else {
                    out.println("<p class='text-red-500'>Invalid username or password</p>");
                }
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p class='text-red-500'>Error: " + e.getMessage() + "</p>");
            }
        }
    %>
</div>
</body>
</html>
