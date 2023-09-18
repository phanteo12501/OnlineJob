<%-- 
    Document   : resetPassword
    Created on : Oct 10, 2021, 3:55:49 PM
    Author     : Tung
--%>

<%@page import="entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Inner Page - Vesperr Bootstrap Template</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="vendor/aos/aos.css" rel="stylesheet">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/login.css" rel="stylesheet">
        <link href="css/createRequest.css" rel="stylesheet">

        <!-- =======================================================
        * Template Name: Vesperr - v4.6.0
        * Template URL: https://bootstrapmade.com/vesperr-free-bootstrap-template/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top d-flex align-items-center" style="background-color:#e2f5fde0;">
            <div class="container d-flex align-items-center justify-content-between">

                <div class="logo">
                    <h1><a href="index.jsp">Vesperr</a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="index.html"><img src="img/logo.png" alt="" class="img-fluid"></a>-->
                </div>

                <nav id="navbar-main" class="navbar-main">
                    <ul>
                        <li><a class="nav-link scrollto" href="listAllMentor">All mentors</a></li>
                        <li><a class="nav-link scrollto" href="SkillControllerMap?service=allSkill">All skills</a></li>
                        <li><a class="nav-link scrollto" href="forum">Forum</a></li>
                            <c:choose>
                                <c:when test="${sessionScope.currUser!=null}">
                                <li><a class="nav-link scrollto" href="listRequestByMe">Request</a>
                                </li><li><a class="nav-link scrollto" href="openChat">Messenger</a></li>
                                <li class="dropdown getstarted scrollto ">
                                    <span style="color: white; padding: 0;">User</span>
                                    <ul>
                                        <li><a href="UserControllerMap?service=profile&uId=${sessionScope.currUser.id}">Profile</a></li>
                                        <li><a href="UserControllerMap?service=logOut">Log out</a></li>
                                    </ul>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="dropdown getstarted scrollto "><a href="signIn.jsp" style="color: white; padding: 0;">
                                        <span>Sign in</span></a>
                                    <ul>
                                        <li><a href="signUp.jsp">Sign up</a>
                                        </li>
                                    </ul>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar-main -->

            </div>
        </header><!-- End Header -->

        <!-- ======= Hero Section ======= -->


        <main id="main">

            <!-- ======= Breadcrumbs Section ======= -->
            <section class="breadcrumbs" style=" background-color: white;">
                <div class="card-heading">
                    <h2 class="title" style="color: black; font-weight: bold;" >Reset Your Password </h2>
                </div>
            </section><!-- End Breadcrumbs Section -->
            <div class="content">

                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-10">


                            <div class="row justify-content-center">
                                <div class="col-md-6">

                                    <h3 class="heading mb-4">Let's talk about everything!</h3>

                                    <p><img src="img/undraw-contact.svg" alt="Image" class="img-fluid"></p>


                                </div>
                                <div class="col-md-6">

                                    <form class="mb-5" action="ResetPasswordController" method="post" id="contactForm" name="contactForm">

                                        <div class="form-row">
                                            <div class="name">New Password</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <input onkeyup='check();' maxlength="20" class="input-white" id="password" type="text" placeholder="Password" name="password" required pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$" title="8 characters include capitalized, normal letters and numbers">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="name">Confirm Password</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <input onkeyup='check();' maxlength="20" class="input-white" id="confirm" type="text" placeholder="Confirm Password" name="confirm" required pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$" title="8 characters include capitalized, normal letters and numbers">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                <button id="submit" style="padding-bottom: 0px; padding-top: 0px;" type="submit" class="btn btn-primary rounded-0 ">Reset Password</button>
                                                <!--<input type="hidden" name="service" value="resetPass">-->
                                            </div>
                                        </div>
                                    </form>
                                    <span id='message'></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <script>
                    <%-- Check if new password and re-enter password match or not --%>
                    var check = function () {
                        if (document.getElementById('password').value == document.getElementById('confirm').value) {
                            document.getElementById('message').style.color = 'green';
                            document.getElementById('message').innerHTML = '';
                            document.getElementById('submit').disabled = false;
                        } else {
                            document.getElementById('message').style.color = 'red';
                            document.getElementById('message').innerHTML = 'New password dont match with Confirm password';
                            document.getElementById('submit').disabled = true;
                        }
                    }
                </script>
            </div>

    </body>
    <style>body {
            font-family: "Roboto", sans-serif;
            background-color: #fff;
            line-height: 1.9;
            color: #8c8c8c; }

        h1, h2, h3, h4, h5, h6,
        .h1, .h2, .h3, .h4, .h5, .h6 {
            font-family: "Roboto", sans-serif;
            color: #000; }

        a {
            -webkit-transition: .3s all ease;
            -o-transition: .3s all ease;
            transition: .3s all ease; }
        a, a:hover {
            text-decoration: none !important; }

        .text-black {
            color: #000; }

        .content {
            padding: 7rem 0; }

        .heading {
            font-size: 2.5rem;
            font-weight: 900; }

        .form-control {
            border: none;
            background: #f3f3f3; }
        .form-control:active, .form-control:focus {
            outline: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            border-color: #000;
            background: #f3f3f3; }

        .col-form-label {
            color: #000; }

        .btn, .form-control, .custom-select {
            height: 50px; }

        .custom-select:active, .custom-select:focus {
            outline: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            border-color: #000; }

        .btn {
            border: none;
            border-radius: 4px !important; }
        .btn.btn-primary {
            background: #000;
            color: #fff;
            padding: 15px 20px; }
        .btn:hover {
            color: #fff; }
        .btn:active, .btn:focus {
            outline: none;
            -webkit-box-shadow: none;
            box-shadow: none; }

        .box {
            padding: 40px;
            background: #fff;
            -webkit-box-shadow: -30px 30px 0px 0 rgba(0, 0, 0, 0.08);
            box-shadow: -30px 30px 0px 0 rgba(0, 0, 0, 0.08); }
        .box h3 {
            font-size: 14px;
            margin-bottom: 30px;
            text-align: center; }

        label.error {
            font-size: 12px;
            color: red; }

        #message {
            resize: vertical; }

        #form-message-warning, #form-message-success {
            display: none; }

        #form-message-warning {
            color: #B90B0B; }

        #form-message-success {
            color: #55A44E;
            font-size: 18px;
            font-weight: bold; }

        .submitting {
            float: left;
            width: 100%;
            padding: 10px 0;
            display: none;
            font-weight: bold;
            font-size: 12px;
            color: #000; }
        </style>

    </main><!-- End #main -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact" style="background-color: white;">
    <div class="container">

        <div class="section-title" data-aos="fade-up">
            <h2>Contact Us</h2>
        </div>

        <div class="row">

            <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
                <div class="contact-about">
                    <h3>Vesperr</h3>
                    <p>Cras fermentum odio eu feugiat. Justo eget magna fermentum iaculis eu non diam phasellus. Scelerisque
                        felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.</p>
                    <div class="social-links">
                        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 mt-4 mt-md-0" data-aos="fade-up" data-aos-delay="200">
                <div class="info">
                    <div>
                        <i class="ri-map-pin-line"></i>
                        <p>A108 Adam Street<br>New York, NY 535022</p>
                    </div>

                    <div>
                        <i class="ri-mail-send-line"></i>
                        <p>info@example.com</p>
                    </div>

                    <div>
                        <i class="ri-phone-line"></i>
                        <p>+1 5589 55488 55s</p>
                    </div>

                </div>
            </div>

            <div class="col-lg-5 col-md-12" data-aos="fade-up" data-aos-delay="300">

                <!--MAP-->
            </div>

        </div>

    </div>
</section><!-- End Contact Section -->
<!-- ======= Footer ======= -->
<footer id="footer">
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-lg-6 text-lg-left text-center">
                <div class="copyright">
                    &copy; Copyright <strong>Vesperr</strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/vesperr-free-bootstrap-template/ -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
                    <a href="#intro" class="scrollto">Home</a>
                    <a href="#about" class="scrollto">About</a>
                    <a href="#">Privacy Policy</a>
                    <a href="#">Terms of Use</a>
                </nav>
            </div>
        </div>
    </div>
</footer><!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="vendor/aos/aos.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="vendor/glightbox/js/glightbox.min.js"></script>
<script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="vendor/php-email-form/validate.js"></script>
<script src="vendor/purecounter/purecounter.js"></script>
<script src="vendor/swiper/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="js/main.js"></script>

</body>

</html>

