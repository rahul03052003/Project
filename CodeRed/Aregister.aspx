<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aregister.aspx.cs" Inherits="CodeRed.Aregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>NexusPlus - Classified Ads and Listing Template</title>

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
Contact/Enquiry
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


<div class="page-header" style="background: url(assets/img/banner1.jpg);">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="breadcrumb-wrapper">
<h2 class="product-title">Join Us</h2>
<ol class="breadcrumb">
<li><a href="#">Home /</a></li>
<li class="current">Register</li>
</ol>
</div>
</div>
</div>
</div>
</div>


<section class="register section-padding">
<div class="container">
<div class="row justify-content-center">
<div class="col-lg-5 col-md-12 col-xs-12">
<div class="register-form login-area">
<h3>
Register
</h3>
<form class="login-form" runat="server">
<div class="form-group">
<div class="input-icon">
<i class="lni-user"></i>
<input type="text" id="uname" runat="server" class="form-control" name="email" placeholder="Username">
</div>
</div>
    <div class="form-group">
<div class="input-icon">
<i class="lni-user"></i>
<input type="text" id="Aname" runat="server" class="form-control" name="email" placeholder="Agency Name">
</div>
</div>
<div class="form-group">
<div class="input-icon">
<i class="lni-envelope"></i>
<input type="text" id="email" runat="server" class="form-control" name="email" placeholder="Email Address">
</div>
</div>

    <div class="form-group">
<div class="input-icon">
<i class="lni-envelope"></i>
<input type="text" id="phn" runat="server" class="form-control" name="phone" placeholder="Phone Number">
</div>
</div>
<div class="form-group">
<div class="input-icon">
<i class="lni-lock"></i>
<input type="password" runat="server" class="form-control" id="pswd" placeholder="Password">
</div>
</div>
<div class="form-group">
<div class="input-icon">
<i class="lni-lock"></i>
<input type="password" runat="server" class="form-control" id="cpswd" placeholder="Retype Password">
    <span id='message'></span>
</div>
</div>
<div class="form-group mb-3">
<div class="custom-control custom-checkbox">
<input type="checkbox" class="custom-control-input" id="checkedall">
<label class="custom-control-label" for="checkedall">By registering, you accept our Terms & Conditions</label>
</div>
</div>
<div class="text-center">
<button class="btn btn-common log-btn" runat="server" onserverclick="Unnamed_ServerClick" >Register</button>
</div>
</form>
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
<p><a target="_blank" href="https://templateshub.net">Templates Hub</a></p>
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

     function valid() {
       
         var flag = true;
		 
         var namer = document.getElementById('uname').value;
         var intRegexnamer = /^[A-Za-z ]+$/;
         if (!intRegexnamer.test(namer)) {
             alert('Please enter a valid name.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }


         var namer = document.getElementById('Aname').value;
         var intRegexnamer = /^[A-Za-z0-9 ]+$/;
         if (!intRegexnamer.test(namer)) {
             alert('Please enter a valid name.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }
		 

         var email = document.getElementById('email').value;
         var emailReg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
         if (!emailReg.test(email) || email == '') {
             alert('Please enter a valid email id.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }

         var phone = document.getElementById('phn').value;
         var intRegex = /^(7|8|9)[0-9]{9}$/;
         if (!intRegex.test(phone)) {
             alert('Please enter a valid phone number.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }

       

         var pswd = document.getElementById('pswd').value;
         var pswdPattern = /^[A-Za-z0-9]{5,8}$/;
         if (!pswdPattern.test(pswd)) {
             alert('Please enter 8 characters password.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }

     
         var cpswd = document.getElementById('cpswd').value;
         var pswdPattern = /^[A-Za-z0-9]{5,8}$/;
         if (!pswdPattern.test(cpswd)) {
             alert('Re-enter your password.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }



         return flag;
     }
</script>

      <script>
          $('#pswd, #cpswd').on('keyup', function () {
              if ($('#pswd').val() == $('#cpswd').val()) {
                  $('#message').html('Matching').css('color', 'green');
              } else
                  $('#message').html('Not Matching').css('color', 'red');
          });
</script>
</html>
