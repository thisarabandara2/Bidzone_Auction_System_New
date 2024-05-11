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
            position: relative;
            min-height: 100vh;
        }
        .wrapper {
            margin-bottom: 60px; /* Adjust height based on footer height */
        }
        #footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px; /* Adjust height based on footer height */
            background-color: #343a40; /* Footer background color */
            color: #fff; /* Footer text color */
            text-align: center;
            padding-top: 20px; /* Adjust padding based on footer content */
        }
    </style>
</head>
<body>
<div class="wrapper row1">
  <header id="header" class="navbar navbar-expand-lg navbar-dark bg-primary">
    <hgroup>
      <h1><a class="navbar-brand" href="home.jsp">E-Auction</a></h1>
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
<div class="wrapper row2">
    <div id="container" class="container">
        <!-- content body -->
        <section id="gallery" class="clear">
        <h2>Best Price, Best Products</h2>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <h2 class="card-title">About Us</h2>
                            <p class="card-text">Everyday is a winning day...</p>
                            <p class="card-text">A chance to navigate the rapidly evolving marketing landscape in search of culturally engaging solutions to day-to-day selling and buying complex business challenges.</p>
                            <p class="card-text">We are a creatively led national online AUCTION agency with a digital soul. Our work is custom built on the basis of customers need of selling and buying products with the best price of the auctioned products.</p>
                            <p class="card-text">Most of all, we stand behind the idea and believing in creating an online market place. We always offer our customers the best opportunity to sell and buy products. That's why we always offer the option of payment by results.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- / content body -->
    </div>
</div>
<!-- Footer -->
<div id="footer" class="footer bg-primary text-white text-center">
    <div class="container">
        <p class="mb-0">Copyright &copy; 2024 - All Rights Reserved</p>
        <p class="mb-0"><a href="aboutUs.jsp" title="Website Templates"> Goa University</a></p>
    </div>
</div>
<!-- Bootstrap JS -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
