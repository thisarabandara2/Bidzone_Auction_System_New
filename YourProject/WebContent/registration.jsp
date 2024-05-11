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
            margin-bottom: 60px; /* Margin to prevent content from being hidden behind the footer */
        }
        #header {
            background-color: #007bff; /* Header background color */
            color: #fff; /* Header text color */
            text-align: center;
            padding: 20px 0;
        }
        #header h1 {
            margin: 0;
            font-size: 28px;
            font-weight: bold;
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
            color: #fff;
            text-align: center;
            padding-top: 20px;
        }
    </style>
</head>
<body>
<div class="wrapper row1">
    <header id="header">
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <a class="navbar-brand" href="home.jsp">E-Auction</a>
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
            <figure>
                <header class="mt-5">User Registration</header>
                <form id='register' action='UserRegistrationServletPath' method='post' accept-charset='UTF-8'>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for='firstname'>First Name:</label>
                            <input type='text' class="form-control" name='firstname' required/>
                        </div>
                        <div class="form-group col-md-6">
                            <label for='lastname'>Last Name:</label>
                            <input type='text' class="form-control" name='lastname' required/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for='address'>Address:</label>
                            <input type='text' class="form-control" name='address' required/>
                        </div>
                        <div class="form-group col-md-6">
                            <label for='city'>City:</label>
                            <input type='text' class="form-control" name='city' required/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for='state'>State:</label>
                            <input type='text' class="form-control" name='state' required/>
                        </div>
                        <div class="form-group col-md-6">
                            <label for='pincode'>Pin Code:</label>
                            <input type='text' class="form-control" name='pincode' required/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for='telephone'>Telephone:</label>
                            <input type='tel' class="form-control" name='telephone' required/>
                        </div>
                        <div class="form-group col-md-6">
                            <label for='mobile'>Mobile:</label>
                            <input type='tel' class="form-control" name='mobile' required/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for='email'>Email:</label>
                            <input type='email' class="form-control" name='email' required/>
                        </div>
                        <div class="form-group col-md-6">
                            <label for='password'>Password:</label>
                            <input type='password' class="form-control" name='password' required/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for='cpassword'>Re-Type Password:</label>
                            <input type='password' class="form-control" name='cpassword' required/>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-secondary">Reset</button>
                </form>
                <figcaption></figcaption>
            </figure>
        </section>
        <!-- / content body -->
    </div>
</div>
<!-- Footer -->
<div class="footer bg-primary text-white text-center">
    <div class="container">
        <p class="mb-0">Copyright &copy; 2024 - All Rights Reserved</p>
        <p class="mb-0"><a href="registration.jsp" title="Website Templates"> Goa University</a></p>
    </div>
</div>
</body>
</html>
