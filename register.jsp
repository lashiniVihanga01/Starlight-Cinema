<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Register</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-green-100 to-green-200 min-h-screen flex items-center justify-center">
<div class="bg-white p-10 rounded-lg shadow-md w-96">
    <h1 class="text-3xl font-semibold text-center text-gray-800 mb-6">Create an Account</h1>
    <p class="text-center text-gray-600 mb-6">Join us by filling in the details below</p>
    <form action="register.jsp" method="POST">
        <div class="mb-4">
            <label class="block text-sm font-medium text-gray-700 mb-2" for="username">Username</label>
            <input type="text" name="username" id="username"
                   class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:ring-2 focus:ring-green-400 focus:outline-none"
                   placeholder="Choose a username" required>
        </div>
        <div class="mb-4">
            <label class="block text-sm font-medium text-gray-700 mb-2" for="email">Email</label>
            <input type="email" name="email" id="email"
                   class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:ring-2 focus:ring-green-400 focus:outline-none"
                   placeholder="Enter your email address" required>
        </div>
        <div class="mb-6">
            <label class="block text-sm font-medium text-gray-700 mb-2" for="password">Password</label>
            <input type="password" name="password" id="password"
                   class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:ring-2 focus:ring-green-400 focus:outline-none"
                   placeholder="Create a password" required>
        </div>
        <button type="submit"
                class="w-full bg-green-500 hover:bg-green-600 text-white font-medium py-2 px-4 rounded-lg transition duration-200">
            Register
        </button>
    </form>
    <%
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "root");
                String query = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(query);
                stmt.setString(1, username);
                stmt.setString(2, email);
                stmt.setString(3, password);
                stmt.executeUpdate();
                conn.close();
                out.println("<p class='text-green-500 text-center mt-4'>Registration successful! Welcome aboard.</p>");
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p class='text-red-500 text-center mt-4'>Error registering user. Please try again later.</p>");
            }
        }
    %>
    <p class="text-center text-gray-500 text-sm mt-4">Already have an account? <a href="login.jsp" class="text-green-500 hover:underline">Login here</a></p>
</div>
</body>
</html>
