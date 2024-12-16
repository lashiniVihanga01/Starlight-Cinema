<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie List and Add Movie</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500 min-h-screen">

<!-- Navbar -->
<nav class="bg-purple-600 p-4">
    <div class="max-w-6xl mx-auto flex justify-between items-center">
        <a href="?view=add_movie" class="text-white text-xl font-semibold">Add Movie</a>
        <a href="?view=movie_list" class="text-white text-xl font-semibold">Movie List</a>
    </div>
</nav>

<!-- Main Content -->
<div class="max-w-6xl mx-auto p-8">

    <%
        String view = request.getParameter("view");
        if (view == null || view.equals("movie_list")) {
    %>

    <!-- Movie List Content -->
    <h1 class="text-4xl font-bold text-gray-800 text-center mb-8">Movies List</h1>
    <table class="w-full bg-white shadow-lg rounded-lg overflow-hidden">
        <thead>
        <tr class="bg-gray-800 text-white">
            <th class="px-4 py-2">ID</th>
            <th class="px-4 py-2">Title</th>
            <th class="px-4 py-2">Release Year</th>
            <th class="px-4 py-2">Description</th>
            <th class="px-4 py-2">Photo</th>
            <th class="px-4 py-2">Action</th>
        </tr>
        </thead>
        <tbody class="divide-y divide-gray-200">
        <%
            // Check if delete request is present
            String deleteId = request.getParameter("delete_id");
            if (deleteId != null) {
                try {
                    // Delete movie logic here
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "root");
                    String deleteQuery = "DELETE FROM movies WHERE id = ?";
                    PreparedStatement pstmt = conn.prepareStatement(deleteQuery);
                    pstmt.setInt(1, Integer.parseInt(deleteId));
                    pstmt.executeUpdate();
                    pstmt.close();
                    conn.close();
                    out.println("<script>alert('Movie deleted successfully!'); window.location.href='index.jsp?view=movie_list';</script>");
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("<script>alert('Error deleting movie: " + e.getMessage() + "');</script>");
                }
            }

            // Display all movies
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "root");
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM movies");

                while (rs.next()) {
                    int movieId = rs.getInt("id");
                    out.println("<tr class='hover:bg-gray-50'>");
                    out.println("<td class='px-4 py-2 text-center'>" + movieId + "</td>");
                    out.println("<td class='px-4 py-2'>" + rs.getString("title") + "</td>");
                    out.println("<td class='px-4 py-2 text-center'>" + rs.getInt("release_year") + "</td>");
                    out.println("<td class='px-4 py-2'>" + rs.getString("description") + "</td>");
                    out.println("<td class='px-4 py-2 text-center'><img src='" + rs.getString("photo_path") + "' alt='Movie Photo' class='w-20 h-20 rounded-lg'></td>");
                    out.println("<td class='px-4 py-2 text-center'>");
                    out.println("<form action='' method='post' onsubmit='return confirmDelete()'>");
                    out.println("<input type='hidden' name='delete_id' value='" + movieId + "'>");
                    out.println("<button type='submit' class='bg-red-600 text-white py-1 px-4 rounded-lg hover:bg-red-700'>Delete</button>");
                    out.println("</form>");
                    out.println("</td>");
                    out.println("</tr>");
                }

                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<tr><td colspan='6' class='px-4 py-2 text-center text-red-500'>Error loading movies: " + e.getMessage() + "</td></tr>");
            }
        %>
        </tbody>
    </table>

    <%
    } else if (view.equals("add_movie")) {
    %>

    <!-- Add Movie Form -->
    <!-- Add Movie Form -->
    <h1 class="text-3xl font-bold text-gray-800 mb-6 text-center">Add a New Movie</h1>
    <form action="addMovie" method="post" enctype="multipart/form-data" class="space-y-4">
        <!-- Title -->
        <div>
            <label for="title" class="block text-sm font-medium text-gray-700">Movie Title</label>
            <input type="text" id="title" name="title" required
                   class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-purple-400">
        </div>
        <!-- Release Year -->
        <div>
            <label for="release_year" class="block text-sm font-medium text-gray-700">Release Year</label>
            <input type="number" id="release_year" name="release_year" required
                   class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-purple-400">
        </div>
        <!-- Description -->
        <div>
            <label for="description" class="block text-sm font-medium text-gray-700">Description</label>
            <textarea id="description" name="description" rows="3" required
                      class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-purple-400"></textarea>
        </div>
        <!-- Duration -->
        <div>
            <label for="duration" class="block text-sm font-medium text-gray-700">Duration (Minutes)</label>
            <input type="number" id="duration" name="duration" required
                   class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-purple-400">
        </div>
        <!-- Genre -->
        <div>
            <label for="trailer_url" class="block text-sm font-medium text-gray-700">YouTube Trailer URL</label>
            <input type="text" id="trailer_url" name="trailer_url"
                   placeholder="https://www.youtube.com/watch?v=example" required
                   class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-purple-400">
        </div>
        <div>
            <label for="genre" class="block text-sm font-medium text-gray-700">Genre</label>
            <input type="text" id="genre" name="genre" required
                   class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-purple-400">
        </div>
        <!-- Rating -->
        <div>
            <label for="rating" class="block text-sm font-medium text-gray-700">Rating</label>
            <input type="text" id="rating" name="rating" required
                   class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-purple-400">
        </div>
        <!-- Ticket Price -->
        <div>
            <label for="ticket_price" class="block text-sm font-medium text-gray-700">Ticket Price</label>
            <input type="text" id="ticket_price" name="ticket_price" required
                   class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-purple-400">
        </div>
        <!-- Status -->
        <div>
            <label for="status" class="block text-sm font-medium text-gray-700">Status</label>
            <input type="text" id="status" name="status" required
                   class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-purple-400">
        </div>
        <!-- Photo -->
        <div>
            <label for="photo" class="block text-sm font-medium text-gray-700">Movie Photo</label>
            <input type="file" id="photo" name="photo" accept="image/*" required
                   class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-purple-400">
        </div>
        <!-- Submit Button -->
        <button type="submit"
                class="w-full bg-purple-600 text-white font-medium py-2 px-4 rounded-lg hover:bg-purple-700 transition">
            Add Movie
        </button>
    </form>


    <%
        }
    %>

</div>

<script>
    function confirmDelete() {
        return confirm("Are you sure you want to delete this movie?");
    }
</script>

</body>
</html>
