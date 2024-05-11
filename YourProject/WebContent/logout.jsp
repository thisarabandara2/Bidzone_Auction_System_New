<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  // Invalidate the current session
  session.invalidate();
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="refresh" content="3;url=home.jsp">
  <title>BidZone Online Auction</title>
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
    $(document).ready(function(){
      $('#exampleModal').modal('show');
    });
  </script>
</head>
<body>
  <div class="wrapper row1">
    <header id="header" class="navbar navbar-expand-lg navbar-dark bg-primary">
      <hgroup>
        <h1><a class="navbar-brand" href="home.jsp">BidZone Online Auction</a></h1>
      </hgroup>
      <% 
        String userName = (String) request.getSession().getAttribute("username");
        boolean isLoggedIn = userName != null;
      %>
      <!-- ################################################################################################ -->
      <nav id="topnav" class="ml-auto">
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
  
  <!-- Modal -->
  <div class="modal fade mt-20" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Log Out Successfully</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <!-- Modal body content -->
        </div>
      </div>
    </div>
  </div>
</body>
</html>
