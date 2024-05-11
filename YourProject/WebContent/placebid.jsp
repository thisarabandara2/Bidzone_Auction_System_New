<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <!-- Mobile Menu -->
    <script src="scripts/jquery-1.7.2.min.js"></script>
    <script src="scripts/jquery-mobilemenu.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.topnav').mobileMenu({
                combine: false,
                switchWidth: 600,
                prependTo: 'nav#topnav'
            });
        });
    </script>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        body {
            padding-top: 60px; /* Adjusted to accommodate the fixed header */
            background-color: #f8f9fa; /* Background color */
        }
        #header {
            background-color: #007bff; /* Header background color */
            color: #fff; /* Header text color */
            text-align: center;
            padding: 20px 0;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000; /* Ensure header is on top */
        }
        .footer {
            background-color: #343a40;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            width: 100%;
            position: fixed;
            bottom: 0;
        }
    </style>
</head>
<body>
<header id="header">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
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
                <li class="nav-item active">
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
    </nav>
</header>

<div class="container mt-5">
    <!-- content body -->
    <section id="gallery">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <h3 class="text-center">Create an Auction</h3>
                    </div>
                    <div class="card-body">
                        <%
                            int aid = Integer.parseInt(request.getParameter("aid"));
                        %>
                        <form action="PlaceNewBidServletPath?aid=<%= aid %>" method="post">
                            <div class="form-group">
                                <label for="price">Price</label>
                                <input type="text" class="form-control" name="price" id="price">
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button type="reset" class="btn btn-secondary">Reset</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Footer -->
<div class="footer">
    <div class="container">
        <p class="mb-0">Copyright &copy; 2024 - All Rights Reserved</p>
        <p class="mb-0"><a href="contactUs.jsp" title="Website Templates"> Goa University</a></p>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>