
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.myclasses.java.Products" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BidZone Online Auction</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <script>
		$(document).ready(function() {
		    $('.delete-btn').click(function() {
		        if (confirm("Are you sure you want to delete this product?")) {
		            var form = $(this).closest('form');
		            $.ajax({
		                type: form.attr('method'),
		                url: form.attr('action'),
		                data: form.serialize(),
		                success: function(response) {
		                    // Optionally, you can handle success response here
		                    location.reload(); // Reload the page after successful deletion
		                },
		                error: function(xhr, status, error) {
		                    console.log(xhr.responseText);
		                    alert("Error deleting product. Please try again.");
		                }
		            });
		        }
		    });
		});
	</script>
    
    <style>
        body {
            position: relative;
            min-height: 100vh;
        }
        #header {
            background-color: #0056b3;
            color: #ffffff;
            text-align: center;
            padding: 20px 0;
        }
        .nav-link {
            color: #ffffff;
        }
        .card {
            margin-bottom: 20px;
        }
        .product-details {
            padding-right: 15px; /* Add right padding to separate from image */
        }
    </style>
</head>
<body>
<div class="wrapper">
    <header id="header" class="navbar navbar-expand-lg navbar-dark">
        <h1><a class="navbar-brand" href="home.jsp">BidZone Online Auction</a></h1>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
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
                <% 
                    String userName = (String) request.getSession().getAttribute("username");
                    boolean isLoggedIn = userName != null;
                    if (isLoggedIn) { 
                %>
                    <li class="nav-item">
                        <a class="nav-link" href="userProfile.jsp"><%= userName %></a>
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
    </header>

    <div id="content" class="container">
        <h2 class="text-center">Best Price, Best Products</h2>
        <div class="row">
            <% 
                ArrayList<Products> productList = (ArrayList<Products>) request.getAttribute("productList");
                for (Products p : productList) {
            %>
                <div class="col-md-6">
                    <div class="card">
                        <div class="row no-gutters">
                            <div class="col-md-8">
                                <div class="card-body product-details">
                                    <h5 class="card-title"><a class="product-link" href="createAuction.jsp?pid=<%= p.getProductId() %>"><%= p.getProdname() %></a></h5>
                                    <p class="card-text"><%= p.getDescription() %></p>
                                    <form class="delete-form" action="deleteProduct" method="post">
                                        <input type="hidden" name="productId" value="<%= p.getProductId() %>">
                                        <button type="button" class="btn btn-danger btn-sm delete-btn">Delete</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-4">
                            <img src="<%= p.getImagepath() %>" class="img-fluid" alt="Product Image">
                            </div>
                        </div>
                    </div>
                </div>
            <% } %>
        </div>
    </div>
</div>

</body>
</html>
