<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<title>E-Auction | </title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- Cosmo theme -->
<link href="https://bootswatch.com/4/cosmo/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
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
.card {
    border: none;
    border-radius: 10px;
    transition: all 0.3s;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}
.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}
.card-body {
    padding: 20px;
}
.card-title {
    font-size: 18px;
    margin-bottom: 15px;
}
.card-text {
    font-size: 14px;
    color: #666;
}
/* Lock footer to bottom */
html {
  position: relative;
  min-height: 100%;
}
body {
  margin-bottom: 60px; /* Margin bottom by footer height */
}
.footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 60px; /* Set the fixed height of the footer here */
  background-color: #f5f5f5;
}
</style>
</head>
<body>
<div class="wrapper row1">
  <header id="header" class="navbar navbar-expand-lg navbar-dark bg-primary">
    <hgroup>
      <h1><a class="navbar-brand" href="home.jsp">E-Auction</a></h1>
    </hgroup>
    <!-- ################################################################################################ -->
    <nav id="topnav">
      <ul class="topnav clear navbar-nav ml-auto">
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
          <a class="nav-link" href="login.jsp">Log In</a>
        </li>
      </ul>
    </nav>
    <div class="clear"></div>
  </header>
</div>
<!-- content -->
<div class="wrapper row2">
  <div id="container" class="container">
   <h2 class="mt-5">Best Price, Best Products</h2>
    <!-- ################################################################################################ -->
    <!-- main content -->
     <%
    	if(request.getSession().getAttribute("message")!=null) {
    %>
    	<h2><%=request.getSession().getAttribute("message") %></h2>
    <%
    	request.getSession().removeAttribute("message");
    	}
    %>
    <div id="homepage">
      <section id="shout">
        <h1>Products</h1>
        <p>Best Place to sell and buy second hand products</p>
      </section>
      <!-- Slider -->
      <!-- <section id="featured_slide">
        <figure>
          <header></header>
          
          <ul class="list-unstyled">
            <li><a href="register.jsp"><img src="images/b1.png" alt=""></a></li>
            <li><a href="buy.jsp"><img src="images/b2.png" alt=""></a></li>
            <li><a href="<%=request.getContextPath()%>/DisplayUsersProductsServletsPath?userId=<%= request.getSession().getAttribute("userId") %>"><img src="images/b3.png" alt=""></a></li>
            <li class="last"><a href="<%=request.getContextPath()%>/DisplayAuctionedProductsServletPath"><img src="images/b4.png" alt=""></a></li>
          </ul>
          <figcaption>Gallery Description Goes Here</figcaption>
        </figure>
      </section> -->
      <!-- Introduction -->
      <section id="services" class="clear">
      <div class="row">
        <div class="col-md-3 mb-4">
          <a href="register.jsp" class="card text-center">
            <div class="card-body">
              <i class="fas fa-registered fa-4x mb-3"></i>
              <h5 class="card-title">Product Registration</h5>
              <p class="card-text">Register Your Product!</p>
            </div>
          </a>
        </div>
        <div class="col-md-3 mb-4">
          <a href="buy.jsp" class="card text-center">
            <div class="card-body">
              <i class="fas fa-shopping-cart fa-4x mb-3"></i>
              <h5 class="card-title">Buy A Product</h5>
              <p class="card-text">Confirm your purchase!</p>
            </div>
          </a>
        </div>
        <div class="col-md-3 mb-4">
          <a href="<%=request.getContextPath()%>/DisplayUsersProductsServletsPath?userId=<%= request.getSession().getAttribute("userId") %>" class="card text-center">
            <div class="card-body">
              <i class="fas fa-handshake fa-4x mb-3"></i>
              <h5 class="card-title">Sell Your Product</h5>
              <p class="card-text">Create your Auction now!</p>
            </div>
          </a>
        </div>
        <div class="col-md-3 mb-4">
          <a href="<%=request.getContextPath()%>/DisplayAuctionedProductsServletPath" class="card text-center">
            <div class="card-body">
              <i class="fas fa-gavel fa-4x mb-3"></i>
              <h5 class="card-title">Place A Bid</h5>
              <p class="card-text">Place a bid on an available item!</p>
            </div>
          </a>
        </div>
      </div>
      </section>
    </div>
   </div>
</div>
<!-- Copyright -->
<div class="wrapper row3">
  <footer id="copyright" class="footer bg-primary text-white py-4">
    <div class="container text-center">
      <p class="mb-0">Copyright &copy; 2024 - All Rights Reserved </p>
      <p class="mb-0"><a href="products.jsp" title="Website Templates"> Goa University</a></p>
    </div>
  </footer>
</div>
</body>
</html>
