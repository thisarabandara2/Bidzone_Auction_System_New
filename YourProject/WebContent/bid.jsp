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
	<title>BidZone Online Auction|</title>
	<!-- Bootstrap CSS -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 	rel="stylesheet">
	
	<!-- Cosmo theme -->
	<link href="https://bootswatch.com/4/cosmo/bootstrap.min.css" rel="stylesheet">
	
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- Mobile Menu -->
	<script src="scripts/jquery-1.7.2.min.js"></script>
	<script src="scripts/jquery-mobilemenu.min.js"></script>
	
	<script>
		$(document).ready(function() {
			$('.topnav').mobileMenu({
				combine : false,
				switchWidth : 600,
				prependTo : 'nav#topnav'
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
	
	.auction-item {
		border: 1px solid #ddd;
		padding: 20px;
		margin-bottom: 20px;
		background-color: #fff;
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add shadow */
		border-radius: 5px; /* Rounded corners */
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
	<div class="wrapper row1">
		<header id="header"
			class="navbar navbar-expand-lg navbar-dark">
			<hgroup>
				<h1>
					<a class="navbar-brand ml-5" href="home.jsp">BidZone Online Auction</a>
				</h1>
			</hgroup>
			<%
			String userName = (String) request.getSession().getAttribute("username");
			boolean isLoggedIn = userName != null;
			%>

			<nav id="topnav" class="ml-auto active">
				<ul class="topnav clear navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
					<li class="nav-item "><a class="nav-link" href="products.jsp">Products</a></li>
					<li class="nav-item"><a class="nav-link" href="aboutUs.jsp">About Us</a></li>
					<li class="nav-item"><a class="nav-link" href="contactUs.jsp">Contact Us</a></li>
					<% if (isLoggedIn) { %>
						<li class="nav-item"><a class="nav-link" href="userProfile.jsp"><%=userName%></a></li>
						<li class="nav-item"><a class="nav-link" href="logout.jsp">Log Out</a></li>
					<% } else { %>
						<li class="nav-item"><a class="nav-link" href="registration.jsp">Registration</a></li>
						<li class="nav-item"><a class="nav-link" href="login.jsp">Log In</a></li>
					<% } %>
				</ul>
			</nav>
			<div class="clear"></div>
		</header>
	</div>

	<div class="container mt-5">
		<!-- content body -->
		<section id="gallery">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="card">
						<div class="card-header bg-primary text-white">
							<h3 class="text-center">Items Open for Bidding</h3>
						</div>
						<div class="card-body">
							<%
							ArrayList<Auction> auctionList = (ArrayList<Auction>) request.getAttribute("auctionList");
							int size = auctionList.size();
							int i = 0;
							int pid;
							while (i < size) {
								Auction a = auctionList.get(i);
								pid = a.getProductId();
								Products pro = new Products();
								ProductService ps = new ProductService();
								pro = ps.getProductDetails(pid);
							%>
							<%-- <div class="auction-item">
								<div>
									<img src="<%=pro.getImagepath()%>" class="card-img-top product-img" alt="Product Image">	
								</div>
								<p> Product Name:  <%=pro.getProdname()%> </p>
								<p> Product Price (LKR): <%=pro.getPrice()%> </p>
								
								
								<a href="placebid.jsp?aid=<%=a.getAuctionId()%>" class="btn btn-primary">Place Bid</a>
							</div> --%>
							<div class="auction-item">
							    <div class="row">
							        <!-- Left column for details -->
							        <div class="col-md-6">
							            <!-- Product Name: --> <h3> <%= pro.getProdname() %> </h3> 
							            <p>Latest Bid (LKR) : <%= pro.getPrice() %></p>
							            <a href="placebid.jsp?aid=<%= a.getAuctionId() %>" class="btn btn-primary">Place Bid</a>
							        </div>
							        <!-- Right column for the product image -->
							        <div class="col-md-6">
							            <img src="<%= pro.getImagepath() %>" class="card-img-top product-img" alt="Product Image">
							        </div>
							    </div>
							</div>
							
							<% i++; } %>
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
			<p class="mb-0">
				<a href="bid.jsp" title="Website Templates"></a>
			</p>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
