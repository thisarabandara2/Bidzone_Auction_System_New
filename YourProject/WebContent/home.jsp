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
    <title>BidZone Online Auction </title>
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
    	body {
    	background-color: #EFEFEF; /* Light grey background */
		}
    
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
	
        #footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px; /* Height of the footer */
        }
        .card {
    	border: none;
    	transition: transform 0.3s;
    	width: 100%; /* Set default width */
    	max-width: 500px; /* Set max width to maintain responsiveness */
    	margin: 0 auto 20px; /* Center align and add bottom margin */
    	height: 500px; /* Set card height */
}
    </style>
</head>
<body>
<div class="wrapper row1">
  <header id="header" class="navbar navbar-expand-lg navbar-dark">
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
        <div id="content" class="container mt-3">
            <div class="row">
                <div class="col">
                    <!-- <h2 class="mb-4">BidZone Online Auction</h2> -->
                    <div class="row">
                        <%  
                            String qryStr = "";
                            Statement stmt = null;
                            ResultSet rs = null;
                            String connectionURL = "jdbc:mysql://localhost:3306/test2";
                            Connection connection = null;
                            Class.forName("com.mysql.jdbc.Driver").newInstance();

                            connection = DriverManager.getConnection(connectionURL, "root","12345678");

                            stmt = connection.createStatement();
                            qryStr = "SELECT * from Products";
                            rs = stmt.executeQuery(qryStr);
                            while (rs.next()) {
                        %>
                       
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card">
                                <img src="<%=rs.getString("imagepath")%>" class="card-img-top product-img" alt="Product Image">
                                <div class="card-body">
                                    <h5 class="card-title"><%=rs.getString("prodname")%></h5>
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
       <!-- <div class="footer">
		<div class="container">
			<p class="mb-0">Copyright &copy; 2024 - All Rights Reserved</p>
			<p class="mb-0">
				<a href="bid.jsp" title="Website Templates"></a>
			</p>
		</div> -->
	</div>
</body>
</html>
