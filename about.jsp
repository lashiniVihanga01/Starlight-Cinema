<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Movie Booking System</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe); /* Smooth gradient background */
            color: #333333;
        }
        .icon {
            font-size: 2rem;
            color: #3182ce;
        }
        .card {
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .navbar-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3182ce;
            color: white;
            border-radius: 5px;
            font-weight: bold;
            text-align: center;
            transition: background-color 0.3s ease;
        }
        .navbar-link:hover {
            background-color: #2b6cb0;
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
            <a href="index.jsp" class="navbar-link hover:bg-yellow-400">Home</a>
            <a href="contact.jsp" class="navbar-link hover:bg-yellow-400">Contact Us</a>
            <a href="about.jsp" class="navbar-link hover:bg-yellow-400">About Us</a>
        </div>
    </div>
</nav>

<!-- About Us Section -->
<div class="flex-grow max-w-6xl mx-auto p-8">
    <h1 class="text-4xl font-extrabold text-gray-900 text-center mb-12">About Starlight Cinema</h1>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        <!-- Mission Card -->
        <div class="card bg-white p-6">
            <div class="text-center mb-4">
                <i class="fas fa-bullseye icon"></i>
            </div>
            <h2 class="text-2xl font-bold text-gray-900 mb-4">Our Mission</h2>
            <p class="text-gray-700">At Starlight Cinema, our mission is to deliver a seamless, entertaining, and immersive movie experience to all our customers. We aim to provide a wide selection of movies, top-notch customer service, and an exceptional viewing environment.</p>
        </div>

        <!-- Vision Card -->
        <div class="card bg-white p-6">
            <div class="text-center mb-4">
                <i class="fas fa-eye icon"></i>
            </div>
            <h2 class="text-2xl font-bold text-gray-900 mb-4">Our Vision</h2>
            <p class="text-gray-700">We envision Starlight Cinema as the go-to destination for movie lovers worldwide. By embracing technology and innovation, we aim to offer an unmatched cinema experience, with personalized services and state-of-the-art facilities.</p>
        </div>

        <!-- Values Card -->
        <div class="card bg-white p-6">
            <div class="text-center mb-4">
                <i class="fas fa-handshake icon"></i>
            </div>
            <h2 class="text-2xl font-bold text-gray-900 mb-4">Our Values</h2>
            <p class="text-gray-700">Integrity, Innovation, and Excellence are the core values that drive everything we do. We are committed to providing our customers with the best movie-watching experience while continuously improving our services and embracing new technologies.</p>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-light py-6 mt-auto">
    <div class="max-w-6xl mx-auto text-center">
        <p class="text-sm">© 2024 Starlight Cinema. All rights reserved.</p>
    </div>
</footer>

</body>
</html>
