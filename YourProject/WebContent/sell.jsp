<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.myclasses.java.Products" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<title>E-Auction | </title>
<meta charset="iso-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="styles/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="styles/mediaqueries.css" type="text/css" media="all">
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
<link rel="stylesheet" href="styles/ie.css" type="text/css" media="all">
<script src="scripts/css3-mediaqueries.min.js"></script>
<script src="scripts/html5shiv.min.js"></script>
<![endif]-->
<style>
  /* Additional Styles */
  body {
    font-family: Arial, sans-serif;
    background-color: #f3f3f3;
  }

   #header {
            background-color: #0056b3; /* Header background color */
            color: #ffffff ; /* Header text color */
            text-align: center;
            padding: 20px 0;
        }

  .wrapper {
    width: 80%;
    margin: 0 auto;
  }

  .content {
    background-color: #fff;
    padding: 20px;
    margin-top: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  .product-list {
    list-style-type: none;
    padding: 0;
  }

  .product-list li {
    border-bottom: 1px solid #ddd;
    padding: 10px 0;
  }

  .product-list li:last-child {
    border-bottom: none;
  }

  .product-link {
    color: #007bff;
    text-decoration: none;
  }

  .product-link:hover {
    text-decoration: underline;
  }

  footer {
    background-color: #333;
    color: #fff;
    padding: 20px 0;
    text-align: center;
    position: fixed;
    bottom: 0;
    width: 100%;
  }
</style>
</head>
<body>
<header>
  <h1><a href="home.jsp">BidZone Online Auction</a></h1>
  <h2>Best Price, Best Products</h2>
</header>
<nav id="topnav">
  <ul class="topnav clear">
    <li><a href="home.jsp">Home</a></li>
    <li class="active"><a href="products.jsp">Products</a></li>
    <li><a href="aboutUs.jsp">About Us</a></li>
    <li><a href="contactUs.jsp">Contact Us</a></li>
    <li><a href="registration.jsp">Registration</a></li>
    <li class="last"><a href="login.jsp">Log In</a></li>
  </ul>
</nav>
<div class="wrapper">
  <div class="content">
    <h2>Create an Auction </h2>
    <p>Choose a product to create an auction.</p>
    <ul class="product-list">
      <% 
          ArrayList<Products> productList = (ArrayList<Products>) request.getAttribute("productList");
          int size = productList.size();
          int i = 0;
          while (i < size) {
              Products p = productList.get(i);
      %>
            <li>Product Name: <a class="product-link" href="createAuction.jsp?pid=<%= p.getProductId() %>"><%= p.getProdname() %></a><form action="deleteProduct.jsp" method="post" style="display: inline;">
          	<input type="hidden" name="productId" value="<%= p.getProductId() %>">
          	<button type="submit" class="delete-btn">Delete</button>
        	</form></li>
              
      <% 
              i++;
          }
      %>
    </ul>
  </div>
</div>
<footer>
  <p>&copy; 2024 - All Rights Reserved | <a href="sell.jsp" title="Website Templates"> Goa University</a></p>
</footer>
</body>
</html>

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
    <!-- Mobile Menu -->
    <script src="scripts/jquery-1.7.2.min.js"></script>
    <script src="scripts/jquery-mobilemenu.min.js"></script>
    
    <style>
        body {
            position: relative;
            min-height: 100vh;
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
		
		#header h2 {
			margin-top: 5px;
			font-size: 18px;
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
    </style>
</head>
<body>
<div class="wrapper">
    <header id="header" class="navbar navbar-expand-lg navbar-dark">
        <hgroup>
      		<h1><a class="navbar-brand" href="home.jsp">BidZone Online Auction</a></h1>
    	</hgroup>
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

    <div id="content">
        <h2 class="text-center">Best Price, Best Products</h2>
        <div class="row">
            <% 
                ArrayList<Products> productList = (ArrayList<Products>) request.getAttribute("productList");
                for (Products p : productList) {
            %>
                <div class="col-md-6">
                    <div class="card mb-3">
                        <div class="card-body">
                            <h5 class="card-title"><a href="createAuction.jsp?pid=<%= p.getProductId() %>"><%= p.getProdname() %></a></h5>
                            <h5> <%= p.getDescription() %> </h5>
                            <img src="<%= p.getImagepath() %>" class="img-fluid" alt="Product Image">
                            <form action="deleteProduct.jsp" method="post" style="display: inline;">
                                <input type="hidden" name="productId" value="<%= p.getProductId() %>">
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </div>
                    </div>
                </div>
            <% } %>
        </div>
    </div>

    <!-- Footer -->
   <!--  <footer id="footer" class="footer bg-dark text-white text-center">
        <div class="container">
            <p>&copy; 2024 - All Rights Reserved | <a href="sell.jsp" title="Website Templates">Goa University</a></p>
        </div>
    </footer> -->
</div>

<!-- Bootstrap JS -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

 --%>
 
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
                                    <h5 class="card-title"><%= p.getProdname() %></h5>
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
