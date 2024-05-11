<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.myclasses.java.Products" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Auction | </title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Cosmo theme -->
    <link href="https://bootswatch.com/4/cosmo/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .content {
            flex: 1;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand" href="home.jsp">E-Auction</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="products.jsp">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="aboutUs.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contactUs.jsp">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="registration.jsp">Registration</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-5 content">
    <!-- content body -->
    <section id="gallery">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Product Description</h5>
                <%
                    Products pro = (Products) session.getAttribute("productId");
                %>
                <p class="card-text">Product Name: <%= pro.getProdname() %></p>
                <p class="card-text">Product Description: <%= pro.getDescription() %></p>
                <p class="card-text">Category: <%= pro.getCategory() %></p>
                <p class="card-text">Price: <%= pro.getPrice() %></p>
            </div>
        </div>
    </section>
    <!-- / content body -->
</div>
<footer class="bg-primary text-white py-4">
    <div class="container text-center">
        <p class="mb-0">&copy; 2022 E-Auction. All Rights Reserved.</p>
        <p class="mb-0"> Goa University</p>
    </div>
</footer>
</body>
</html>
