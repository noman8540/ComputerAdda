<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Computer Adda</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Oswald:wght@600&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner"
        class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-secondary navbar-dark sticky-top py-lg-0 px-lg-5 wow fadeIn"
        data-wow-delay="0.1s">
        <a href="home" class="navbar-brand ms-4 ms-lg-0">

            <h1 class="mb-0 text-primary text-uppercase">
                <img src="img/Logo.jpg" alt="Romotek logo" class="logo">
                <i class="me-3">

                </i>
                <a href="home">Computer Adda</a>
            </h1>
        </a>



        <div class="">

            <%String email=(String) session.getAttribute("eid");if (email != null){%><a href="" class=""></a><%}else{%><a href="" class=""></a> <% } %>
        </div> 




        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="home" class="nav-item nav-link active">Home</a>
                <a href="products" class="nav-item nav-link ">Products</a>
                <a href="contact" class="nav-item nav-link">Contact Us</a>
                <a href="cart?email=<%=email%>" class="nav-item nav-link">Cart</a>
            </div>

            <div class="login">

                <%String id=(String) session.getAttribute("eid");
             if (id != null)
     {
         %>
             <a href="logout" class="btn btn-primary rounded-0 py-2 px-lg-4 d-none d-lg-block">Logout
                <i class="fa fa-arrow-right ms-3"></i>
            </a>
         <%
     }
     
     else
     {
         %>
         <a href="login" class="btn btn-primary rounded-0 py-2 px-lg-4 d-none d-lg-block">Login
            <i class="fa fa-arrow-right ms-3"></i>
        </a> 
     
      
       <% } %>
    
    
        </div>

        </div>
    </nav>
    <!-- Navbar End -->


<!-- login start -->
    <div id="loginpage">
      <div class="container mx-auto" id="logincontainer">
          <div class="form-container f-container sign-up">
              <form action="registeration" method="post">
                  <h1 style="color: blue; font-weight: bold; font-size: 40px;">Create Account</h1>
                
                  
                  <input type="text" placeholder="Name" name="name">
                  <input type="email" placeholder="Email" name="email">
                  <input type="password" placeholder="Password" name="password">
                  <button type="submit">Sign Up</button>
              </form>
          </div>
          <div class="form-container sign-in f-container">
              <form action="log" method="post">
                  <h1 style="color: blue; font-weight: bold; font-size: 40px;">Sign In</h1>
                  
                  
                  <input type="email" placeholder="Email" name="email">
                  <br>
                  <input type="password" placeholder="Password" name="password">
                  <br>
                  <a href="#">Forget Your Password?</a>
                  <button type="submit">Sign In</button>
              </form>
          </div>
          <div class="toggle-container">
              <div class="toggle">
                  <div class="toggle-panel toggle-left">
                      <h1>Welcome Back!</h1>
                      <p>Enter your personal details to use all of site features</p>
                      <button class="hidden" id="login">Sign In</button>
                  </div>
                  <div class="toggle-panel toggle-right">
                      <h1>Welcome, Friend!</h1>
                      <p>Enter your personal details to use all of site features</p>
                      <button class="hidden" id="register">Sign Up</button>
                  </div>
              </div>
          </div>
      </div>
  
  </div>
  
     
<!-- login ends -->    
    
    
 <jsp:include page= "footer.jsp"/>
 
 
 
 
  <script>
    const logincontainer = document.getElementById('logincontainer');
    const registerBtn = document.getElementById('register');
    const loginBtn = document.getElementById('login');

    registerBtn.addEventListener('click', () => {
        logincontainer.classList.add("active");
    });

    loginBtn.addEventListener('click', () => {
        logincontainer.classList.remove("active");
    });
    </script>




  <!-- JavaScript Libraries -->
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>

  <!-- Template Javascript -->
  <script src="js/main.js"></script>
</body>

</html>
