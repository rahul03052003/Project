<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CodeRed.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Travel management system</title>

<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="assets/fonts/line-icons.css">

<link rel="stylesheet" type="text/css" href="assets/css/slicknav.css">

<link rel="stylesheet" type="text/css" href="assets/css/color-switcher.css">

<link rel="stylesheet" type="text/css" href="assets/css/animate.css">

<link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.css">

<link rel="stylesheet" type="text/css" href="assets/css/main.css">

<link rel="stylesheet" type="text/css" href="assets/css/responsive.css">
</head>
<body>

<header id="header-wrap">
<div class="top-bar">
<div class="container">
<div class="row">
<div class="col-lg-7 col-md-5 col-xs-12">

<%--<ul class="list-inline">
<li><i class="lni-phone"></i> +0123 456 789</li>
<li><i class="lni-envelope"></i> <a href="http://preview.uideck.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="9ae9efeaeaf5e8eedafdf7fbf3f6b4f9f5f7">[email&#160;protected]</a></li>
</ul>--%>

</div>
<div class="col-lg-5 col-md-7 col-xs-12">

<div class="header-top-right float-right">
<a href="login.aspx" class="header-top-button"><i class="lni-lock"></i> Log In</a> |
<a href="register.aspx" class="header-top-button"><i class="lni-pencil"></i> Register</a>|
<a href="aregister.aspx" class="header-top-button"><i class="lni-pencil"></i>Agency Register</a>
</div>
</div>
</div>
</div>
</div>


<nav class="navbar navbar-expand-lg bg-white fixed-top scrolling-navbar">
<div class="container">

<div class="navbar-header">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-navbar" aria-controls="main-navbar" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
<span class="lni-menu"></span>
<span class="lni-menu"></span>
<span class="lni-menu"></span>
</button>
<a href="index.aspx" class="navbar-brand"><img src="assets/img/logo.png" alt=""></a>
</div>
<div class="collapse navbar-collapse" id="main-navbar">
<ul class="navbar-nav mr-auto w-100 justify-content-center">


    <li class="nav-item active">
<a class="nav-link " href="index.aspx">
Home
</a>
</li>
<li class="nav-item">
<a class="nav-link" href="About.aspx">
About
</a>
</li>


    <li class="nav-item">
<a class="nav-link" href="TourPackages.aspx">
Tour Packegs
</a>
</li>

<li class="nav-item">
<a class="nav-link" href="Enquiry.aspx">
Enquiry for custom package
</a>
</li>
    <li class="nav-item">
<a class="nav-link" href="faq.aspx">
FAQ
</a>
</li>

    
        <li class="nav-item">
<a class="nav-link" href="faq.aspx">
<string id="counter"></string>
</a>


</li>
</ul>

</div>
</div>

<ul class="mobile-menu">
<li>
<a class="active" href="#">
Home
</a>
<ul class="dropdown">
<li><a href="index-2.html">Home 1</a></li>
<li><a class="active" href="index-3.html">Home 2</a></li>
</ul>
</li>
<li>
<a href="category.html">Categories</a>
</li>
<li>
<a href="#">
Listings
</a>
<ul class="dropdown">
<li><a href="adlistinggrid.html">Ad Grid</a></li>
<li><a href="adlistinglist.html">Ad Listing</a></li>
<li><a href="ads-details.html">Listing Detail</a></li>
</ul>
</li>
<li>
<a href="#">Pages</a>
<ul class="dropdown">
<li><a href="about.html">About Us</a></li>
<li><a href="services.html">Services</a></li>
<li><a href="ads-details.html">Ads Details</a></li>
<li><a href="post-ads.html">Ads Post</a></li>
<li><a href="pricing.html">Packages</a></li>
<li><a href="testimonial.html">Testimonial</a></li>
<li><a href="faq.html">FAQ</a></li>
<li><a href="404.html">404</a></li>
</ul>
</li>
<li>
<a href="#">Blog</a>
<ul class="dropdown">
<li><a href="blog.html">Blog - Right Sidebar</a></li>
<li><a href="blog-left-sidebar.html">Blog - Left Sidebar</a></li>
<li><a href="blog-grid-full-width.html"> Blog full width </a></li>
<li><a href="single-post.html">Blog Details</a></li>
</ul>
</li>
<li>
<a href="contact.html">Contact Us</a>
</li>
</ul>

</nav>

</header>

    <form class="search-form" runat="server">
<div id="main-slide" class="carousel slide" data-ride="carousel">
<div class="carousel-inner">
<div class="carousel-item active">
<img class="d-block w-100" src="assets/img/slider/slider-bg1.jpg" alt="First slide">
<div class="carousel-caption d-md-block">
<h1 class="animated wow fadeInDown hero-heading" data-wow-delay=".4s">Welcome to The Trip Planner</h1>
<p class="animated fadeInUp wow hero-sub-heading" data-wow-delay=".6s">Trip System</p>
</div>
</div>
<div class="carousel-item">
<img class="d-block w-100" src="assets/img/slider/slider-bg2.jpg" alt="Second slide">
<div class="carousel-caption d-md-block">
<h1 class="animated wow fadeInLeft hero-heading" data-wow-delay=".7s">Best Trip Planers</h1>
<p class="animated wow fadeInRight hero-sub-heading" data-wow-delay=".9s">Customize your trip plane</p>
</div>
</div>
<div class="carousel-item">
<img class="d-block w-100" src="assets/img/slider/slider-bg3.jpg" alt="Third slide">
<div class="carousel-caption d-md-block">
<h1 class="animated wow fadeInDown hero-heading" data-wow-delay=".6s">View More and More Exposure</h1>
<p class="animated fadeInUp wow hero-sub-heading" data-wow-delay=".8s">Customize your trip plane</p>
</div>
</div>
</div>
<a class="carousel-control-prev" href="#main-slide" role="button" data-slide="prev">
<span class="carousel-control" aria-hidden="true"><i class="lni-chevron-left" data-ripple-color="#F0F0F0"></i></span>
<span class="sr-only">Previous</span>
</a>
<a class="carousel-control-next" href="#main-slide" role="button" data-slide="next">
<span class="carousel-control" aria-hidden="true"><i class="lni-chevron-right" data-ripple-color="#F0F0F0"></i></span>
<span class="sr-only">Next</span>
</a>
</div>








<section class="featured section-padding">
<div class="container">
<h1 class="section-title">Latest Trip Packages</h1>
<div class="row">

                  <asp:Repeater ID="grid" runat="server">  
                         <ItemTemplate>  
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-4">
                    <div class="featured-box">
                    <figure>
                    <div class="icon">
                    <span class="bg-green"><i class="lni-heart"></i></span>
                    <span><i class="lni-bookmark"></i></span>
                    </div>
                    <a href="#"><img class="img-fluid" style="width:100%;height:200px" src="../upload/<%# Eval("PackageImage") %>" alt=""></a>
                    </figure>
                    <div class="feature-content">
                   
                    <h4><a href="ads-details.html">Package Name : <%# Eval("PackageName") %></a></h4>
                    <div class="meta-tag">
                    <span>
                    <a href="#"><i class="lni-user"></i> <%# Eval("PackageType") %></a>
                    </span>
                    <span>
                    <a href="#"><i class="lni-map-marker"></i> <%# Eval("PackageLocation") %></a>
                    </span>
                    <span>
                    <a href="#"><i class="lni-tag"></i> <%# Eval("Aname") %></a>
                    </span>
                    </div>
                    <p class="dsc" style="color:white">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.</p>
                    <div class="listing-bottom">
                 <%--   <h3 class="price float-left">Rs<%# Eval("PackagePrice") %></h3>--%>
                    <%--<a href="#" onclick="viewDetails(<%# Eval("PackageId") %>)" class="btn btn-common float-right">View Details</a>
                    <button onclick="viewDetails(<%# Eval("PackageId") %>)" class="btn btn-common float-right">View Details</button>--%>
                       <%-- <button type="button" id="btnEdit" class="btn btn-sm btn-primary" onclick='reject(<%# Eval("PackageId") %>)'>Reject</button>--%>
                  <%--      <a href="#" onclick='Approve(<%# Eval("PackageId") %>)'>View</a>--%>
                     <button type="button" id="ApproveClaim" class="btn btn-block btn-danger btn-xs" onclick='Approve(<%# Eval("PackageId") %>)'>View</button>
                       
                    </div>
                    </div>
                    </div>
                    </div>
            </ItemTemplate>  
        </asp:Repeater>


</div>
</div>
</section>

<div class="row">
<div class="col-4">

      
    </div>
    <div class="col-4">
        <div class="row"><div class="col-4">

      
    </div><div class="col-4">

      <a href="TourPackages.aspx" class="btn btn-common btn-lg align">View More</a>
    </div><div class="col-4">

      
    </div>
        
    </div>
    </div>
    <div class="col-4">

       
    </div>
    </div>
<section class="works section-padding">
<div class="container">
<div class="row">
<div class="col-12">
<h3 class="section-title">How It Works?</h3>
</div>
<div class="col-lg-4 col-md-4 col-xs-12">
<div class="works-item">
<div class="icon-box">
<i class="lni-users"></i>
</div>
<p>Create an Account</p>
</div>
</div>
<div class="col-lg-4 col-md-4 col-xs-12">
<div class="works-item">
<div class="icon-box">
<i class="lni-bookmark-alt"></i>
</div>
<p>Search Place</p>
</div>
</div>
<div class="col-lg-4 col-md-4 col-xs-12">
<div class="works-item">
<div class="icon-box">
<i class="lni-thumbs-up"></i>
</div>
<p>Book and Deal Done</p>
</div>
</div>
<hr class="works-line">
</div>
</div>
</section>








<section class="counter-section section-padding">
<div class="container">
<div class="row">

<div class="col-md-3 col-sm-6 work-counter-widget">
<div class="counter">
<div class="icon"><i class="lni-layers"></i></div>
<h2 class="counterUp">8325</h2>
<p>Ad Posted</p>
</div>
</div>

<div class="col-md-3 col-sm-6 work-counter-widget">
<div class="counter">
<div class="icon"><i class="lni-users"></i></div>
<h2 class="counterUp">5487</h2>
<p>Members</p>
</div>
</div>

<div class="col-md-3 col-sm-6 work-counter-widget">
<div class="counter">
<div class="icon"><i class="lni-briefcase"></i></div>
<h2 class="counterUp">2012</h2>
<p>Premium Ads</p>
</div>
</div>

<div class="col-md-3 col-sm-6 work-counter-widget">
<div class="counter">
<div class="icon"><i class="lni-map"></i></div>
<h2 class="counterUp">200</h2>
<p>Locations</p>
</div>
</div>
</div>
</div>
</section>








<footer>




<div id="copyright">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="site-info text-center">
<p><a target="_blank" href="index.aspx"> Copyright © 2023. All rights reserved</a></p>
</div>
</div>
</div>
</div>
</div>

</footer>


<a href="#" class="back-to-top">
<i class="lni-chevron-up"></i>
</a>

<div id="preloader">
<div class="loader" id="loader-1"></div>
</div>

</form>
<script data-cfasync="false" src="cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/color-switcher.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/wow.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.slicknav.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/form-validator.min.js"></script>
<script src="assets/js/contact-form-script.min.js"></script>
<script src="assets/js/summernote.js"></script>
</body>

    <script>
        //function viewDetails(id) {
        //    debugger;
        //    var idd = id;
        //    alert(idd);
        //   // window.location = "View_Details.aspx?id=" + idd;
        //    window.location = "View_Details.aspx?id=" + id;
        //}

        //function reject(id) {
        ///*    debugger;*/
        //   /* alert(id);*/
        //    window.location = "View_Details.aspx?id=" + id;
        //}

    </script>

    <script>
        function Approve(id) {
              
            /* alert(id);*/
            window.location = "View_Details.aspx?id=" + id;
        }

    </script>

       <script>
           $(function () {
             
               var counterhub = $.connection.userCount;
               $.connection.hub.start().done(function () {

               })
               counterhub.client.UpdateCount = function (count) {
                   $("#counter").text(count);
               }

           });

       </script>

</html>