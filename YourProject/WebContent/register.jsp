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
    <!-- ################################################################################################ -->
    <!-- content body -->
    <section id="gallery" class="clear">
      <h2 class="text-center">Best Price, Best Products</h2>
      <div class="row justify-content-center">
        <div class="col-md-6">
          <div class="card">
            <div class="card-header">
              Register Your Product
            </div>
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
                    <option value="mouse">Mouse</option>
                    <option value="monitor">Monitor</option>
                    <option value="keyboard">Keyboard</option>
                    <option value="CPU">CPU</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="price">Price</label>
                  <input type='text' class="form-control" name='price' required>
                </div>
                <div class="form-group">
                  <label for="image">Upload Image</label>
                  <input type="file" class="form-control-file" name="imagepath" required>
                </div>
                <button type='submit' class='btn btn-primary'>Submit</button>
                <button type='reset' class='btn btn-secondary'>Reset</button>
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
<div class="wrapper row3">
  <footer id="copyright" class="clear bg-primary text-white py-4">
    <div class="container text-center">
      <p class="mb-0">Copyright &copy; 2024 - All Rights Reserved </p>
      <p class="mb-0"><a href="register.jsp" title="Website Templates"> Goa University</a></p>
    </div>
  </footer>
</div>
</body>
</html>
