<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.myclasses.java.Auction"%>
<%@ page import="com.myclasses.java.Products"%>
<%@ page import="com.mybusiness.services.ProductService"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BidZone Online Auction</title>
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
        
        function validatePrice() {
            var priceInput = document.getElementById('price');
            var priceValue = priceInput.value.trim();

            // Regular expression to allow only digits
            var regex = /^[0-9]+$/;

            if (!regex.test(priceValue)) {
                document.getElementById('priceError').textContent = 'Please enter a valid amount!';
                return false; // Prevent form submission
            } else {
                document.getElementById('priceError').textContent = '';
                return true; // Allow form submission
            }
        }
        
        
        function validateForm() {
            if (validatePrice()) {
                return true; // Form submission allowed if price is valid
            } else {
                alert('Please enter a valid amount!');
                return false; // Prevent form submission
            }
        }
        
    </script>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
        body {
           /*  padding-top: 60px; */ /* Adjusted to accommodate the fixed header */
            background-color: #f8f9fa; /* Background color */
        }
       #header {
            background-color: #0056b3; /* Header background color */
            color: #ffffff ; /* Header text color */
            text-align: center;
            padding: 20px 0;
        }
		#header h1 {
			margin: 0;
			font-size: 28px;
			font-weight: bold;
			padding-left: 5%;
		}
		.topnav li {
			display: inline;
			padding: 0 10px;
		}
		
		.topnav li a {
			color: #fff;
			text-decoration: none;
			font-size: 16px;
		}
		
		.topnav li.active a {
			font-weight: bold;
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
<%-- <div class="container">
        Check for error message in session and display it
        <% String errorMessage = (String) request.getSession().getAttribute("errorMessage"); %>
        <% if (errorMessage != null && !errorMessage.isEmpty()) { %>
            <div class="alert alert-danger" role="alert">
                <%= errorMessage %>
            </div>
        <% } %>
</div> --%>


<header id="header">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark ">
        <a class="navbar-brand" href="home.jsp">BidZone Online Auction</a>
        <%
    String userName = (String) request.getSession().getAttribute("username");
    boolean isLoggedIn = userName != null;
	%>
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
                <% if (isLoggedIn) { %>
            <li class="nav-item">
                <a class="nav-link" ><%= userName %></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="logout.jsp">Log Out</a>
            </li>
        <% } else { %>
            <li class="nav-item">
                <a class="nav-link" href="registration.jsp">Registration</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="login.jsp">Log In</a>
            </li>
        <% } %>
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
                        <div class="auction-item">
                            <div class="row">
                                <!-- Left column for details -->
                                <div class="col-md-6">
                        			<form action="PlaceNewBidServletPath?aid=<%= aid %>" method="post">
			                            <div class="form-group">
			                                <label for="price">Price (SLR)</label>
			                                <input type="text" class="form-control" name="price" id="price" oninput="validatePrice()">
			                            	<small id="priceError" class="text-danger"></small>
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
        <p class="mb-0"><a href="contactUs.jsp" title="Website Templates"></a></p>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
