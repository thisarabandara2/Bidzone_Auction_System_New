<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.myclasses.java.Products"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
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
    <!-- Custom CSS -->
    <style>
        /* Add custom styles here */
        .product-img {
            max-width: 100%;
            height: auto;
        }
        /* Keep footer at the bottom */
        html, body {
            height: 100%;
        }
        #wrapper {
            min-height: 100%;
            position: relative;
        }
        #content {
            padding-bottom: 60px; /* Height of the footer */
        }
        #footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px; /* Height of the footer */
        }
    </style>
</head>
<body>
    <div id="wrapper">
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
        <div id="content" class="container mt-5">
            <div class="row">
                <div class="col">
                    <h2 class="mb-4">Products for Auction</h2>
                    <div class="row">
                        <%  
                            String qryStr = "";
                            Statement stmt = null;
                            ResultSet rs = null;
                            String connectionURL = "jdbc:mysql://localhost:3306/test2";
                            Connection connection = null;
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            connection = DriverManager.getConnection(connectionURL, "root", "");
                            stmt = connection.createStatement();
                            qryStr = "SELECT * from Products";
                            rs = stmt.executeQuery(qryStr);
                            while (rs.next()) {
                        %>
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card">
                                <img src="<%=rs.getString("imagepath")%>" class="card-img-top product-img" alt="Product Image">
                                <div class="card-body">
                                    <h5 class="card-title"><%=rs.getString("productName")%></h5>
                                    <p class="card-text"><%=rs.getString("description")%></p>
                                    <a href="<%=request.getContextPath()%>/ProductDescriptionServletPath?pid=<%=rs.getString("productId")%>"
                                        class="btn btn-primary">View Details</a>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                            rs.close();
                            stmt.close();
                            connection.close();
                        %>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <footer id="footer" class="bg-primary text-white py-4">
            <div class="container text-center">
                <p class="mb-0">&copy; 2024 E-Auction. All rights reserved.</p>
            </div>
        </footer>
    </div>
</body>
</html>