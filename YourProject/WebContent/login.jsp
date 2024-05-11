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
    </script>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        body {
            position: relative;
            min-height: 100vh;
            margin-bottom: 60px; /* Margin to prevent content from being hidden behind the footer */
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
        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            height: 60px;
            background-color: #343a40;
            color: #ffffff ;
            text-align: center;
            padding-top: 20px;
        }
        /* Login Form Styles */
        .login-form {
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            max-width: 400px; /* Reduced width */
            margin: auto; /* Center the form horizontally */
            margin-top: 80px;
            
        }
        .login-form label {
            font-weight: bold;
        }
        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .login-form button[type="submit"],
        .login-form button[type="reset"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0 0;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
        }
        .login-form button[type="reset"] {
            background-color: #6c757d;
        }
        .login-form button[type="submit"]:hover,
        .login-form button[type="reset"]:hover {
            background-color: #0056b3;
        }
        #headerNav{
        	 background-color: #0056b3;
        }
        h2{
        	font-weight: bold;
        }
    </style>
</head>
<body>
<div class="wrapper row1">
    <header id="header">
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark" id="headerNav">
            <a class="navbar-brand" href="home.jsp">BidZone Online Auction</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
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
                    <li class="nav-item">
                        <a class="nav-link" href="registration.jsp">Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
</div>
<!-- content -->
<div class="wrapper row2">
    <div id="container" class="container">
        <!-- content body -->
        <section id="gallery" class="clear">
            <% if(request.getSession().getAttribute("error_message")!=null) { %>
                <div class="alert alert-danger">
                    <%= request.getSession().getAttribute("error_message") %>
                </div>
            <% request.getSession().removeAttribute("error_message"); } %>
            <div class="login-form">
                <header class="mt-5 mb-4 text-center">
                    <h2>User Login</h2>
                </header>
                <form id='login' action='LoginServletPath' method='post' accept-charset='UTF-8'>
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="username" name="username" maxlength="50" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" maxlength="50" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                   <!--  <button type="reset" class="btn btn-secondary">Reset</button> -->
                </form>
            </div>
        </section>
        <!-- / content body -->
    </div>
</div>
<!-- Footer -->
<!-- <div class="footer bg-primary text-white text-center">
    <div class="container">
        <p class="mb-0">Copyright &copy; 2024 - All Rights Reserved</p>
        <p class="mb-0"><a href="login.jsp" title="Website Templates"></a></p>
    </div>
</div> -->
</body>
</html>
