<%--
  Created by IntelliJ IDEA.
  User: Dasun Theekshana
  Date: 12/6/2024
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Movie</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500 min-h-screen">
<!-- Navbar -->
<nav class="bg-purple-600 p-4">
    <div class="max-w-6xl mx-auto flex justify-between items-center">
        <a href="add_movie.jsp" class="text-white text-xl font-semibold">Add Movie</a>
        <a href="index.jsp" class="text-white text-xl font-semibold">Movie List</a>
    </div>
</nav>

<!-- Main Content -->
<div class="max-w-lg w-full bg-white rounded-lg shadow-lg p-6 mt-8 mx-auto">
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
        <!-- Photo -->
        <div>
            <label for="photo" class="block text-sm font-medium text-gray-700">Movie Photo</label>
            <input type="file" id="photo" name="photo" accept="image/*" required
                   class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-purple-400">
        </div>
        <!-- YouTube Trailer URL -->
        <div>
            <label for="trailer_url" class="block text-sm font-medium text-gray-700">YouTube Trailer URL</label>
            <input type="url" id="trailer_url" name="trailer_url"
                   placeholder="https://www.youtube.com/watch?v=example" required
                   class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-purple-400">
        </div>
        <!-- Submit Button -->
        <button type="submit"
                class="w-full bg-purple-600 text-white font-medium py-2 px-4 rounded-lg hover:bg-purple-700 transition">
            Add Movie
        </button>
    </form>
</div>
</body>
</html>
