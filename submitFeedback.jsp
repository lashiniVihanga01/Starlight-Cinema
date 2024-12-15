<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*,java.util.*" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String review = request.getParameter("review");

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        // Establishing connection to the database
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "root");

        // Insert feedback into the table
        String query = "INSERT INTO feedback (name, email, review) VALUES (?, ?, ?)";
        stmt = conn.prepareStatement(query);
        stmt.setString(1, name);
        stmt.setString(2, email);
        stmt.setString(3, review);

        int result = stmt.executeUpdate();

        if (result > 0) {
            out.println("<h3 class='text-center text-green-500'>Thank you for your feedback!</h3>");
        } else {
            out.println("<h3 class='text-center text-red-500'>Sorry, something went wrong. Please try again later.</h3>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3 class='text-center text-red-500'>Error: " + e.getMessage() + "</h3>");
    } finally {
        try {
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
