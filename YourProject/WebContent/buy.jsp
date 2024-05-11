<!DOCTYPE html>
<html lang="en">
<head>
	<title>BidZone Online Auction </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Bootstrap CSS -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
	<!-- Cosmo theme -->
	<link href="https://bootswatch.com/4/cosmo/bootstrap.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
		html, body {
		    height: 100%;
		}
		.wrapper {
		    min-height: 100%;
		    margin-bottom: -100px; /* negative value of footer height */
		}
		.footer,.push {
		    height: 100px; /* height of footer */
		}
		/* Reduce margin for h2 */
		#container h2 {
		    margin-top: 10px;
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
  <header id="header" class="navbar navbar-expand-lg navbar-dark ">
    <hgroup>
      <h1><a class="navbar-brand" href="home.jsp">BidZone Online Auction</a></h1>
    </hgroup>
    <%
    String userName = (String) request.getSession().getAttribute("username");
    boolean isLoggedIn = userName != null;
	%>
    
    <!-- ################################################################################################ -->
    <nav id="topnav" class="ml-auto active">
      <ul class="topnav clear navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="home.jsp">Home</a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="products.jsp">Products</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="aboutUs.jsp">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contactUs.jsp">Contact Us</a>
        </li>
        <% if (isLoggedIn) { %>
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
    </nav>
    <div class="clear"></div>
  </header>
</div>
<!-- content -->
<div class="wrapper">
  <div id="container">
  <h2 class="text-center">Best Price, Best Products</h2>
    <!-- ################################################################################################ -->
    <!-- content body -->
    <section id="gallery" class="clear">
      <div class="jumbotron text-center">
        <h1 class="display-4">Few Steps Away from being the owner of a great product</h1>
      </div>
    </section>
    <!-- / content body -->
    <!-- ################################################################################################ -->
    <div class="clear"></div>
  </div>
</div>
<!-- Footer -->
<div class="footer bg-primary text-white text-center">
  <div class="container py-3">
    <p class="mb-0">Copyright &copy; 2024 - All Rights Reserved</p>
    <p class="mb-0"><a href="buy.jsp" title="Website Templates"> Goa University</a></p>
  </div>
</div>
</body>
</html>
