<!DOCTYPE html>
<html lang="en" dir="ltr">
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
		
	<style>
		#button-container{
			display: flex;           /*flexbox */
    		justify-content: space-between;  /* Space buttons evenly across the container */ 
		}
		#submitBtn, #resetBtn {
			width: 48%;
            padding: 10px;
            border-radius: 10px; /* Rounded corners */
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease; /* Smooth transition on hover */
		}
		/* Default button styles */
        #submitBtn {
            background-color: #007bff; /* Blue color */
            color: #fff; /* Text color */ 
        }

        #resetBtn {
            background-color: #6c757d; /* Gray color */
            color: #fff; /* Text color */
            width: 50%;
        }

        /* Hover styles */
        #resetBtn:hover {
            background-color: #555555; /* Darker blue on hover */
        }
        #submitBtn:hover {
        	background-color: #0056b3;
        }
        h2{
        	font-weight: bold;
        	padding-top: 7%;
        	padding-bottom: 2%;
        }
        label {
        	font-weight: bold;
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
	</style>
</head>
<body>

	<div class="wrapper row1">
	  <header id="header" class="navbar navbar-expand-lg navbar-dark">
	    <hgroup>
	      <h1><a class="navbar-brand" href="home.jsp">BidZone Online Auction</a></h1>
	    </hgroup>
	    <!-- ################################################################################################ -->
	    <nav id="topnav" class="ml-auto active">
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
	    <!-- ################################################################################################ -->
	    <!-- content body -->
	    <section id="gallery" class="clear">
	     <!--  <h2 class="text-center">Best Price, Best Products</h2> -->
	      <h2 class="text-center"> Register Your Product</h2>
	      <div class="row justify-content-center">
	        <div class="col-md-6">
	          <div class="card">
	           <!--  <div class="card-header">Register Your Product </div> -->
	            <div class="card-body">
	              <form id='register' action='ProductRegistrationServletPath' method='post' accept-charset='UTF-8'>
	                <div class="form-group">
	                  <label for='name'>Name</label>
	                  <input type='text' class="form-control" name='prodname' required>
	                </div>
	                <div class="form-group">
	                  <label for='description'>Description</label>
	                  <textarea name="description" class="form-control" rows="4" cols="50" required></textarea>
	                </div>
	                <div class="form-group">
	                  <label for="category">Category</label>
	                  <select name="category" class="form-control">
	                    <option value="others">--others--</option>
	                    <option value="electronics">Electronics</option>
	                    <option value="home_appliance">Home Appliances</option>
	                    <option value="fashion_and_accessories">Fashion and Accessories</option>
	                    <option value="art_and_collectibles">Art and Collectibles</option>
	                   	<option value="hume_and_garden">Home and Garden</option>
	                    <option value="sports_and_fitness">Sports and Fitness</option>
	                    <option value="toys_and_games">Toys and Games</option>
	                    <option value="books_and_media">Books and Media</option>
	                    <option value="automotive">Automotive</option>
	                    <option value="health_and_beauty">Health and Beauty</option>
	                    
	                  </select>
	                </div>
	                <div class="form-group">
	                  <label for="price">Starting Price</label>
	                  <input type='text' class="form-control" name='price' required>
	                </div>
	                <div class="form-group">
	                  <label for="image">Upload Image</label>
	                  <input type="file" class="form-control-file" name="imagepath" required>
	                </div>
	                <div class = "button-container">
		                <button type='submit' class='btn btn-primary' id="submitBtn">Submit</button>
		                <button type='reset' class='btn btn-secondary' id="resetBtn">Reset</button>
	                </div>
	              </form>
	            </div>
	          </div>
	        </div>
	      </div>
	    </section>
	    <!-- / content body -->
	    <!-- ################################################################################################ -->
	    <div class="clear"></div>
	  </div>
	</div>
	<!-- Copyright -->
	<!-- <div class="wrapper row3">
	  <footer id="copyright" class="clear bg-primary text-white py-4">
	    <div class="container text-center">
	      <p class="mb-0">Copyright &copy; 2024 - All Rights Reserved </p>
	      <p class="mb-0"><a href="register.jsp" title="Website Templates"></a></p>
	    </div>
	  </footer>
	</div> -->
</body>
</html>
