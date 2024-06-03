<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Details.aspx.cs" Inherits="CodeRed.View_Details" %>

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
    <form runat="server">
<header id="header-wrap">

<div class="top-bar">
<div class="container">
<div class="row">
<div class="col-lg-7 col-md-5 col-xs-12">



</div>
<div class="col-lg-5 col-md-7 col-xs-12">

<div class="header-top-right float-right">
<a href="login.aspx" class="header-top-button"><i class="lni-lock"></i> Log In</a> |
<a href="register.html" class="header-top-button"><i class="lni-pencil"></i> Register</a>
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
<a href="index-2.html" class="navbar-brand"><img src="assets/img/logo.png" alt=""></a>
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
 <li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
Tour Packegs
</a>
</li>




    <li class="nav-item">
<a class="nav-link" href="Enquiry.aspx">
ENQUIRY FOR CUSTOM PACKAGE
</a>
</li>
        <li class="nav-item">
<a class="nav-link" href="faq.aspx">
Faq
</a>
</li>
</ul>


</div>
</div>

<ul class="mobile-menu">
<li>
<a href="#">
Home
</a>
<ul class="dropdown">
<li><a href="index-2.html">Home 1</a></li>
<li><a href="index-3.html">Home 2</a></li>
</ul>
</li>
<li>
<a href="category.html">Categories</a>
</li>
<li>
<a class="active" href="#">
Listings
</a>
<ul class="dropdown">
<li><a href="adlistinggrid.html">Ad Grid</a></li>
<li><a href="adlistinglist.html">Ad Listing</a></li>
<li><a class="active" href="ads-details.html">Listing Detail</a></li>
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
<h2 class="product-title">Details</h2>
<ol class="breadcrumb">
<li><a href="#">Home /</a></li>
<li class="current">Details</li>
</ol>
</div>
</div>
</div>
</div>
</div>


<div class="section-padding">
<div class="container">

<div class="product-info row">
         <asp:Repeater ID="RepeatInformation" runat="server">  
                         <ItemTemplate>  
<div class="col-lg-8 col-md-12 col-xs-12">

<div class="ads-details-wrapper">
<div id="owl-demo" class="owl-carousel owl-theme">
<div class="item">
<div class="product-img">
<img class="img-fluid" src="../upload/<%# Eval("PackageImage") %>" alt="">
</div>
<span class="price">Rs <%# Eval("PackagePrice") %></span>
</div>

</div>
</div>
<div class="details-box">
<div class="ads-details-info">
<h2><%# Eval("PackageName") %></h2>
<%--<div class="details-meta">
<span><a href="#"><i class="lni-alarm-clock"></i> 7 Jan, 10:10 pm</a></span>
<span><a href="#"><i class="lni-map-marker"></i> New York</a></span>
<span><a href="#"><i class="lni-eye"></i> 299 View</a></span>
</div>--%>
      <h4 class="title-small mb-3">Package Detail:</h4>
<p class="mb-4"><%# Eval("PackageDetails") %></p>
<h4 class="title-small mb-3">Details</h4>
<ul class="list-specification">
<li><strong>Location</strong></li>
<li><%# Eval("PackageLocation") %></li>
<li> <strong>Packagetype</strong></li>
<li><%# Eval("Packagetype") %></li>
<li><strong> PackageName</strong></li>
<li> <%# Eval("PackageName") %></li>
<li><strong> Uploaded Date</strong></li>
<li> <%# Eval("CreationDate") %></li>
<li><strong> Pickup time</strong></li>
<li> <%# Eval("Ptime") %></li>
</ul>
    <h4 class="title-small mb-3">Package Fetures</h4>
<p class="mb-4">
    <%# Eval("PackageFetures") %>
</p>
</div>

</div>



</div>
<div class="col-lg-4 col-md-6 col-xs-12">

<aside class="details-sidebar">
<div class="widget">
<h4 class="widget-title">Please Login to Book This Trip</h4>
<div class="agent-inner">
<div class="agent-title">
<div class="agent-photo">

</div>
<div class="agent-details">
<h3><a href="#"> <%# Eval("AgencyName") %></a></h3>
<span><i class="lni-phone-handset"></i> <%# Eval("phone") %></span>
</div>
</div>
<%-- <label>From</label>
<input type="date" class="form-control">
     <label>To</label>
<input type="date" class="form-control">--%>
<%--<button class="btn btn-common fullwidth mt-4">Send Message</button>--%>
   <%-- <a href="Login.aspx" class="btn btn-common fullwidth mt-4" data-toggle="modal" data-target="#modalLoginForm">Login</a>
   --%> <a href="Login.aspx" class="btn btn-common fullwidth mt-4" >Login</a>

   
</div>
</div>


</aside>

</div>
                                     </ItemTemplate>  
        </asp:Repeater>


</div>

</div>
</div>

 


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


    <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Sign in</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
          <i class="fas fa-envelope prefix grey-text"></i>
          <input type="email" id="email"  runat="server" class="form-control validate">
          <label data-error="wrong" data-success="right" for="defaultForm-email">Your email</label>
        </div>

        <div class="md-form mb-4">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="password" id="pass"  runat="server" class="form-control validate">
          <label data-error="wrong" data-success="right" for="defaultForm-pass">Your password</label>
        </div>

      </div>
      <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-default" runat="server" onserverclick="Unnamed_ServerClick">Login</button>
      </div>
    </div>
  </div>
</div>





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

<!-- Mirrored from preview.uideck.com/items/nexusplus/ads-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 12 Oct 2018 07:22:54 GMT -->
</html>