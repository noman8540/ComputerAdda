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
                <a href="contact" class="nav-item nav-link">Contact</a>
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
    



    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner inner1">
                <div class="carousel-item active item1">
                    <img class="w-100" src="img/image 1.jpeg" alt="Image">
                    <div class="carousel-caption d-flex align-items-center justify-content-center text-start">
                        <div class="mx-sm-5 px-5" style="max-width: 900px;">
                            <h1 class="display-2 text-white text-uppercase mb-4 animated slideInDown">One Stop Solution
                                For All Your PC Needs</h1>
                            <h4 class="text-white text-uppercase mb-4 animated slideInDown"><i
                                    class="fa fa-map-marker-alt text-primary me-3"></i>Shamshad Complex, Near Distance
                                Education Center AMU Aligarh</h4>
                            <h4 class="text-white text-uppercase mb-4 animated slideInDown"><i
                                    class="fa fa-phone-alt text-primary me-3"></i>+91 7302302355</h4>
                        </div>
                    </div>
                </div>
                <div class="carousel-item item1">
                    <img class="w-100" src="img/image 3.jpeg" alt="Image">
                    <div class="carousel-caption d-flex align-items-center justify-content-center text-start">
                        <div class="mx-sm-5 px-5" style="max-width: 900px;">
                            <h1 class="display-2 text-white text-uppercase mb-4 animated slideInDown">
                                Get Your PC Serviced Every 6 Months.
                            </h1>
                            <h4 class="text-white text-uppercase mb-4 animated slideInDown"><i
                                    class="fa fa-map-marker-alt text-primary me-3"></i>Shamshad Complex, Near Distance
                                Education Center AMU Aligarh</h4>
                            <h4 class="text-white text-uppercase mb-4 animated slideInDown"><i
                                    class="fa fa-phone-alt text-primary me-3"></i>+91 7302302355</h4>
                        </div>
                    </div>
                </div>

                <div class="carousel-item item1">
                    <img class="w-100" src="img/image7.jpeg" alt="Image">
                    <div class="carousel-caption d-flex align-items-center justify-content-center text-start">
                        <div class="mx-sm-5 px-5" style="max-width: 900px;">
                            <h1 class="display-2 text-white text-uppercase mb-4 animated slideInDown">
                                Can't Afford A New PC, Get A New One Like From US.
                            </h1>
                            <h4 class="text-white text-uppercase mb-4 animated slideInDown"><i class="one me-3"><img
                                        src="img/symbol.png" alt="symbol" class="symbol"></i>Only At Computer Adda</h4>
                            <h4 class="text-white text-uppercase mb-4 animated slideInDown"><i
                                    class="fa fa-phone-alt text-primary me-3"></i>+91 7302302355</h4>
                        </div>
                    </div>
                </div>


            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="d-flex flex-column">
                        <img class="img-fluid w-75 align-self-end" src="img/about.png" alt="">
                        <div class="w-50 bg-secondary p-5" style="margin-top: -25%;">
                            <h1 class="text-uppercase text-primary mb-3">10 Years</h1>
                            <h2 class="text-uppercase mb-0">Experience</h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <p class="d-inline-block bg-secondary text-primary py-1 px-4">About Us</p>
                    <h1 class="text-uppercase mb-4">Computer Adda</h1>
                    <p>Welcome to Computer Adda! We provide top-notch pre-owned imported laptops, expert computer and
                        laptop repair services, a vast selection of accessories, and on-site visits for your
                        convenience. </p>
                    <p class="mb-4">Our dedication to quality, reliability, and customer satisfaction distinguishes us.
                        Rely on us for all your computer requirements!
                    </p>
                    <div class="row g-4">
                        <div class="col-md-6">
                            <h3 class="text-uppercase mb-3">Since 2022</h3>
                        </div>
                        <div class="col-md-6">
                            <h3 class="text-uppercase mb-3">5000+ clients</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <p class="d-inline-block bg-secondary text-primary py-1 px-4">Services</p>
                <h1 class="text-uppercase">What We Provide</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item position-relative overflow-hidden bg-secondary d-flex h-100 p-5 ps-0">
                        <div class="bg-dark d-flex flex-shrink-0 align-items-center justify-content-center"
                            style="width: 60px; height: 60px;">
                            <img class="img-fluid" src="img/repair.webp" alt="">
                        </div>
                        <div class="ps-4">
                            <h3 class="text-uppercase mb-3">MotherBoard Repair</h3>
                            <p>Our skilled technicians diagnose and fix hardware, software, screen, battery, performance, and virus issues.</p>
                            <span class="text-uppercase text-primary">Starting at ₹999</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item position-relative overflow-hidden bg-secondary d-flex h-100 p-5 ps-0">
                        <div class="bg-dark d-flex flex-shrink-0 align-items-center justify-content-center"
                            style="width: 60px; height: 60px;">
                            <img class="img-fluid" src="img/accessories.webp" alt="">
                        </div>
                        <div class="ps-4">
                            <h3 class="text-uppercase mb-3">Accessories and Peripherals</h3>
                            <p>Enhance your computing experience with our wide range of accessories and peripherals, including keyboards, mice, monitors, chargers, external storage, and more.</p>
                            <span class="text-uppercase text-primary"><a href="products">View</span></a>
                        </div>
                        <a class="btn btn-square" href=""><i class="fa fa-plus text-primary"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item position-relative overflow-hidden bg-secondary d-flex h-100 p-5 ps-0">
                        <div class="bg-dark d-flex flex-shrink-0 align-items-center justify-content-center"
                            style="width: 60px; height: 60px;">
                            <img class="img-fluid" src="img/repair.webp" alt="">
                        </div>
                        <div class="ps-4">
                            <h3 class="text-uppercase mb-3">On-Site Visits and Services</h3>
                            <p>We offer on-site visits for repairs, maintenance, and network setup at your home or office, ensuring minimal disruption.</p>
                            <span class="text-uppercase text-primary">Starting at ₹299</span>
                        </div>
                        <a class="btn btn-square" href=""><i class="fa fa-plus text-primary"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item position-relative overflow-hidden bg-secondary d-flex h-100 p-5 ps-0">
                        <div class="bg-dark d-flex flex-shrink-0 align-items-center justify-content-center"
                            style="width: 60px; height: 60px;">
                            <img class="img-fluid" src="img/recovery.jpeg" alt="">
                        </div>
                        <div class="ps-4">
                            <h3 class="text-uppercase mb-3">Data Recovery</h3>
                            <p>Our experts can help you recover lost or corrupted data from your devices, ensuring your files are safe and accessible.</p>
                            <span class="text-uppercase text-primary">Starting at ₹3999</span>
                        </div>
                        <a class="btn btn-square" href=""><i class="fa fa-plus text-primary"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item position-relative overflow-hidden bg-secondary d-flex h-100 p-5 ps-0">
                        <div class="bg-dark d-flex flex-shrink-0 align-items-center justify-content-center"
                            style="width: 60px; height: 60px;">
                            <img class="img-fluid" src="img/software.jpeg" alt="">
                        </div>
                        <div class="ps-4">
                            <h3 class="text-uppercase mb-3">Software Installation and Updates</h3>
                            <p>We help with installing and updating software, making sure your devices use the newest and most secure versions of operating systems and applications.</p>
                            <span class="text-uppercase text-primary">Starting at ₹299</span>
                        </div>
                        <a class="btn btn-square" href=""><i class="fa fa-plus text-primary"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item position-relative overflow-hidden bg-secondary d-flex h-100 p-5 ps-0">
                        <div class="bg-dark d-flex flex-shrink-0 align-items-center justify-content-center"
                            style="width: 60px; height: 60px;">
                            <img class="img-fluid" src="img/pc.webp" alt="">
                        </div>
                        <div class="ps-4">
                            <h3 class="text-uppercase mb-3">Custom-Built PCs</h3>
                            <p>Looking to build a personalized PC catered to your unique requirements? We offer expert guidance and assembly services to craft the ideal setup for gaming, work, or creative endeavors.</p>
                            <span class="text-uppercase text-primary">Starting at ₹9999</span>
                        </div>
                        <a class="btn btn-square" href=""><i class="fa fa-plus text-primary"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->



   


    <!-- Working Hours Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-0">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="h-100">
                        <img class="img-fluid h-100" src="img/Logo.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <div class="bg-secondary h-100 d-flex flex-column justify-content-center p-5">
                        <p class="d-inline-flex bg-dark text-primary py-1 px-4 me-auto">Working Hours</p>
                        <h1 class="text-uppercase mb-4">Waiting For You</h1>
                        <div>
                            <div class="d-flex justify-content-between border-bottom py-2">
                                <h6 class="text-uppercase mb-0">Monday</h6>
                                <span class="text-uppercase">11 AM - 08 PM</span>
                            </div>
                            <div class="d-flex justify-content-between border-bottom py-2">
                                <h6 class="text-uppercase mb-0">Tuesday</h6>
                                <span class="text-uppercase">11 AM - 08 PM</span>
                            </div>
                            <div class="d-flex justify-content-between border-bottom py-2">
                                <h6 class="text-uppercase mb-0">Wednesday</h6>
                                <span class="text-uppercase">11 AM - 08 PM</span>
                            </div>
                            <div class="d-flex justify-content-between border-bottom py-2">
                                <h6 class="text-uppercase mb-0">Thursday</h6>
                                <span class="text-uppercase">11 AM - 08 PM</span>
                            </div>
                            <div class="d-flex justify-content-between border-bottom py-2">
                                <h6 class="text-uppercase mb-0">Friday</h6>
                                <span class="text-uppercase text-primary">Closed</span>
                            </div>
                            <div class="d-flex justify-content-between border-bottom py-2">
                                <h6 class="text-uppercase mb-0">Saturday</h6>
                                <span class="text-uppercase">11 AM - 08 PM</span>
                            </div>
                            <div class="d-flex justify-content-between py-2">
                                <h6 class="text-uppercase mb-0">Sunday</h6>
                                <span class="text-uppercase">11 AM - 08 PM</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Working Hours End -->


   <!-- Client Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <p class="d-inline-block bg-secondary text-primary py-1 px-4">Client</p>
                <h1 class="text-uppercase">What Our Clients Say!</h1>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                <div class="testimonial-item text-center"data-dot="<img class='img-fluid-1' src='img/noman.jpg' alt=''>">
                    <h4 class="text-uppercase">Md Noman Quamar</h4>
                    <p class="text-primary">Software Developer</p>
                    <span class="fs-5">Computer Adda provided exceptional service from start to finish.
                     Their expert technicians quickly resolved my laptop issues, and their selection of accessories was top-notch. 
                     The on-site visit option was incredibly convenient for my busy schedule. 
                     Highly recommend their services!</span>
                </div>
                <div class="testimonial-item text-center"
                    data-dot="<img class='img-fluid' src='img/testimonial-2.jpg' alt=''>">
                    <h4 class="text-uppercase">Khubaib Bin Mujeeb</h4>
                    <p class="text-primary">Student</p>
                    <span class="fs-5">I’ve been using Computer Adda for both repairs and new accessories, and I couldn’t be happier. 
                    Their prompt service and knowledgeable staff make tech issues stress-free. 
                    The custom-built PC they assembled for me is perfect for my business needs. Five stars!</span>
                </div>
                <div class="testimonial-item text-center"
                    data-dot="<img class='img-fluid' src='img/testimonial-3.jpg' alt=''>">
                    <h4 class="text-uppercase">Farhan</h4>
                    <p class="text-primary">Student</p>
                    <span class="fs-5">The team at Computer Adda went above and beyond. 
                    They not only fixed my laptop swiftly but also helped me choose the right peripherals for my design work. 
                    Their on-site service was a lifesaver during a tight project deadline. 
                    I’m thoroughly impressed!</span>
                </div>
            </div>
        </div>
    </div>
    <!-- Client End -->


    <jsp:include page="footer.jsp"/>


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