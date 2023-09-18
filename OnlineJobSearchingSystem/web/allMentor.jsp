<%-- 
  Copyright (C) 2021, FPT University<br>
  SWP391 - SE1509 - Group 4<br>
  Happyprogramming<br>
 
  Record of change:<br>
  DATE          Version    Author           DESCRIPTION<br>
  20-09-2021    1.0        DuongVV          First Deploy<br>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>List All Mentor Page</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet">

        <link href="vendor/aos/aos.css" rel="stylesheet">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <link href="css/style.css" rel="stylesheet">
        <link href="css/popup.css" rel="stylesheet">
        <link href="css/allMentor.css" rel="stylesheet">
    </head>

    <body>

        <%-- Header --%>
        <header id="header" class="fixed-top d-flex align-items-center" style="background-color:#e2f5fde0;">
            <div class="container d-flex align-items-center justify-content-between">

                <div class="logo">
                    <h1><a href="index.jsp">Vesperr</a></h1>
                </div>

                <nav id="navbar-main" class="navbar-main">
                    <ul>
                        <li><a class="nav-link scrollto" href="listAllMentor">All mentors</a></li>
                        <li><a class="nav-link scrollto" href="SkillControllerMap?service=allSkill">All skills</a></li>
                        <li><a class="nav-link scrollto" href="forum">Forum</a></li>
                            <%-- Check current User --%>
                            <c:choose>
                                <c:when test="${sessionScope.currUser!=null}">
                                <li><a class="nav-link scrollto" href="listRequestByMe">Request</a>
                                </li>
                                <li><a class="nav-link scrollto" href="openChat">Messenger</a></li>
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
                </nav>
            </div>
        </header>
        <%-- End header --%>
        <%-- Main --%>
        <main id="main">
            <section class="breadcrumbs">
                <div class="container">
                </div>
            </section>
            <section id="team" class="team section-bg">
                <div class="row">
                    <div class="col-md-2">
                        <c:if test="${sessionScope.currUser!=null}">
                            <a href="listSuggestedMentor?filter=1"><button class="create" style="min-width: 164px;">Suggestion List</button></a>
                        </c:if>
                    </div>
                    <%-- Title  --%>
                    <div class="col-md-8 section-title">
                        <h2 class="">List All Mentor</h2>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <form class="form" action="searchMentorPublic" method="GET">
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-5"></div>
                        <%-- Seacrh Name box  --%>
                        <c:choose>
                            <c:when test="${name!=null}">
                                <div class="col-md-3">
                                    <label class="label" for="name">Search Mentor by Name </label>
                                    <input type="text" id="name" name="name" value="${name}" pattern=".*\S+.*" title="No white space only"  maxlength="20">
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="col-md-3">
                                    <label class="label" for="name">Search Mentor by Name </label>
                                    <input type="text" id="name" name="name" pattern=".*\S+.*" title="No white space only" value=""  maxlength="20">
                                </div>
                            </c:otherwise>
                        </c:choose>
                        <%-- Search button --%>
                        <div class="col-md-1">
                            <input class="search" type="submit" value="Search">
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                </form>            
                <div class="container">

                    <div class="row">
                        <%-- Check if list Mentor empty or not --%>
                        <c:choose>
                            <%-- List Mentor empty --%>
                            <c:when test="${empty mList}">
                                <h1 class="no-req">  No Mentor found! </h1>
                            </c:when>
                            <c:otherwise>
                                <%-- List Mentor not empty --%>
                                <c:forEach items="${mList}" var="mentor">
                                    <div class="col-lg-3 col-md-6">
                                        <div class="member box-display" data-aos="fade-up" data-aos-delay="100">
                                            <img class="img-display" src="img/default-image.jpg">
                                            <div class="member-info">
                                                <h4><c:out value="${mentor.getFullname()}"></c:out></h4>
                                                <a class="view-button" href="CVProfile?mId=${mentor.getId()}&sId=0">View CV</a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <%-- Paging --%>
                    <c:if test="${!empty mList}">
                        <div class="row">  
                            <div class="paging">
                                <%-- Previous --%>
                                <c:choose>
                                    <c:when test="${index>1}">
                                        <a class="previous" href="${href}index=${index-1}"><</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a class="previous disabled" href="${href}index=${index-1}"><</a>
                                    </c:otherwise>
                                </c:choose>
                                <%-- Page index --%>
                                <c:forEach begin="1" end="${endPage}" var="page">
                                    <c:choose>
                                        <c:when test="${index==page}">
                                            <a class="choose disabled" href="${href}index=${page}"> ${page}</a> 
                                        </c:when>
                                        <c:otherwise>
                                            <a href="${href}index=${page}"> ${page}</a> 
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                                <%-- Next --%>
                                <c:choose>
                                    <c:when test="${index!=endPage}">
                                        <a class="next" href="${href}index=${index+1}">  ></a>
                                    </c:when>
                                    <c:otherwise>
                                        <a class="next disabled" href="${href}index=${index+1}">></a>
                                    </c:otherwise>
                                </c:choose>
                            </div> 
                        </div>

                    </c:if>
                </div>
            </section>
        </main>
        <%-- End main --%>
        <%-- Footer --%>
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
        </footer>
        <%-- End Footer --%>
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
