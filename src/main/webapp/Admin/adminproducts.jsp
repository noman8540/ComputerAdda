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
        <a href="adminhome" class="navbar-brand ms-4 ms-lg-0">

            <h1 class="mb-0 text-primary text-uppercase">
                <img src="img/Logo.jpg" alt="Romotek logo" class="logo">
                <i class="me-3">

                </i>
                <a href="adminhome">Computer Adda</a>
            </h1>
        </a> 




        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="adminhome" class="nav-item nav-link active">Admin Home</a>
                <a href="adminabout" class="nav-item nav-link">About</a>
                <a href="addproducts" class="nav-item nav-link">Add Products</a>
                <a href="adminproducts" class="nav-item nav-link">Products</a>
                <a href="admincontact" class="nav-item nav-link">Contact Us</a>
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
    
	<!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5">
            <h1 class="display-3 text-white text-uppercase mb-3 animated slideInDown">Products</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center text-uppercase mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="adminhome">Home</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">Products</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


   <!-- Products Start -->


   <div class="section">

       <div class="container1">
           <h1 style="text-align: center;">Laptops</h1>
             
        <div class="item-container">

            <c:forEach var="prod" items="${laptopProducts}">

                <div class="items">
                    <div class="img1">
                        <a href="adminsinglepage?id=${prod.id}">
                        <img src="${prod.image_url }" alt="" style="width: 200px; height: 200px; background-color: #000;">
                    </a>
                </div>
                <div class="name">Name: ${prod.name}</div>
                <div class="price">Price: ${prod.price}</div>
                <div class="info">
                   <a href="update?id=${prod.id}">
               				<button type="button" class="btn btn-success">Update
               				</button>
               				</a>
                			 
                 
                 			<a href="delete?id=${prod.id}">
               				<button type="button" class="btn btn-success">Delete
               				</button>
               				</a>
               				
               				
               				 
                 
                 			<a href="adminsinglepage?id=${prod.id}">
               				<button type="button" class="btn btn-success">Details
               				</button>
               				</a>
                </div>
            </div> 
            
        </c:forEach>
         </div>
           
        </div>
        
    </div>




    <div class="section">

        <div class="container1">
            <h1 style="text-align: center;">Accessories</h1>
              
         <div class="item-container">
 
            <c:forEach var="prod" items="${accessoriesProducts}">
             <div class="items">
                 <div class="img1">
                     <a href="adminsinglepage?id=${prod.id}">
                         <img src="${prod.image_url }" alt="" style="width: 200px; height: 200px; background-color: #000;">
                     </a>
                 </div>
                 <div class="name">Name: ${prod.name}</div>
                 <div class="price">Price: ${prod.price}</div>
                 <div class="info">
                     <a href="update?id=${prod.id}">
               				<button type="button" class="btn btn-success">Update
               				</button>
               				</a>
                			 &nbsp;
                 
                 			<a href="delete?id=${prod.id}">
               				<button type="button" class="btn btn-success">Delete
               				</button>
               				</a>
               				
               				
               				 &nbsp;
                 
                 			<a href="adminsinglepage?id=${prod.id}">
               				<button type="button" class="btn btn-success">Details
               				</button>
               				</a>
                 </div>
             </div> 
 
             </c:forEach>

              </div>
            
         </div>
 
  </div>



  <div class="section">

    <div class="container1">
        <h1 style="text-align: center;">Peripherals</h1>
          
     <div class="item-container">

        <c:forEach var="prod" items="${peripheralProducts}">
         <div class="items">
             <div class="img1">
                 <a href="adminsinglepage?id=${prod.id}">
                     <img src="${prod.image_url }" alt="" style="width: 200px; height: 200px; background-color: #000;">
                 </a>
             </div>
             <div class="name">Name: ${prod.name}</div>
             <div class="price">Price: ${prod.price}</div>
             <div class="info">
                 <a href="update?id=${prod.id}">
               				<button type="button" class="btn btn-success">Update
               				</button>
               				</a>
                			 &nbsp;
                 
                 			<a href="delete?id=${prod.id}">
               				<button type="button" class="btn btn-success">Delete
               				</button>
               				</a>
               				
               				
               				 &nbsp;
                 
                 			<a href="adminsinglepage?id=${prod.id}">
               				<button type="button" class="btn btn-success">Details
               				</button>
               				</a>
             </div>
         </div> 

         </c:forEach>

          </div>
        
     </div>

</div>


<!-- product end -->


<jsp:include page="adminfooter.jsp"/>

 <!-- Back to Top -->
    <a href="#" class="btn btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


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