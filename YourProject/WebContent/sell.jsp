<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

  header {
    background-color: #333;
    color: #fff;
    padding: 20px 0;
    text-align: center;
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
  <h1><a href="home.jsp">E-Auction</a></h1>
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
