x<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CodeRed.About" %>

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
<a href="register.aspx" class="header-top-button"><i class="lni-pencil"></i>Agency Register</a>
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
    <div class="page-header" style="background: url(assets/img/banner1.jpg);">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="breadcrumb-wrapper">
<h2 class="product-title">About Us</h2>
<ol class="breadcrumb">
<li><a href="#">Home /</a></li>
<li class="current">About Us</li>
</ol>
</div>
</div>
</div>
</div>
</div>


<section id="about" class="section-padding">
<div class="container">
<div class="row">
<div class="col-md-6 col-lg-6 col-xs-12">
<div class="about-wrapper">
<h2 class="intro-title">Why We Are Unique</h2>
<p class="intro-desc">Comprehensive Travel Solutions - We offer an all-in-one platform for planning, booking, and managing your travel needs. From car and bus rentals to trip planning and expense tracking, we cover every aspect of your journey.
</p>
<a href="#" class="btn btn-common btn-lg">Add Listing</a>
</div>
</div>
<div class="col-md-6 col-lg-6 col-xs-12">
<img class="img-fluid" src="assets/img/about/about.png" alt="">
</div>
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


<section class="services section-padding">
<div class="container">
<div class="row">

<div class="col-md-6 col-lg-4 col-xs-12">
<div class="services-item wow fadeInRight" data-wow-delay="0.2s">
<div class="icon">
<i class="lni-book"></i>
</div>
<div class="services-content">
<h3><a href="#">Full Documented</a></h3>
<p>It is fully well-defined documented in the trip planner and provide good interface for the user.</p>
</div>
</div>
</div>

<div class="col-md-6 col-lg-4 col-xs-12">
<div class="services-item wow fadeInRight" data-wow-delay="0.4s">
<div class="icon">
<i class="lni-leaf"></i>
</div>
<div class="services-content">
<h3><a href="#">Clean & Modern Design</a></h3>
<p> This includes the sections for Supplier Integration, Contract Management, and Performance Monitoring.</p>
</div>
</div>
</div>

<div class="col-md-6 col-lg-4 col-xs-12">
<div class="services-item wow fadeInRight" data-wow-delay="0.6s">
<div class="icon">
<i class="lni-map"></i>
</div>
<div class="services-content">
<h3><a href="#">Great Features</a></h3>
<p>Supplier IntegrationSeamless API Integration,Real-Time Data,User-Friendly Interface.</p>
</div>
</div>
</div>

<div class="col-md-6 col-lg-4 col-xs-12">
<div class="services-item wow fadeInRight" data-wow-delay="0.8s">
<div class="icon">
<i class="lni-cog"></i>
</div>
<div class="services-content">
<h3><a href="#">Completely Customizable</a></h3>
<p>It provides Customizable Display Options,Dynamic Supplier Management.</p>
</div>
</div>
</div>

<div class="col-md-6 col-lg-4 col-xs-12">
<div class="services-item wow fadeInRight" data-wow-delay="1s">
<div class="icon">
<i class="lni-git"></i>
</div>
<div class="services-content">
<h3><a href="#">User Friendly</a></h3>
<p>Travel management system is basically very easy to use by anyone.</p>
</div>
</div>
</div>

<div class="col-md-6 col-lg-4 col-xs-12">
<div class="services-item wow fadeInRight" data-wow-delay="1.2s">
<div class="icon">
<i class="lni-layout"></i>
</div>
<div class="services-content">
<h3><a href="#">Awesome Layout</a></h3>
<p>It will provide gorious interface for the user to attack them to it.</p>
</div>
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
</html>