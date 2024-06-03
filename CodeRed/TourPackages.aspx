<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourPackages.aspx.cs" Inherits="CodeRed.TourPackages" %>

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
ENQUIRY FOR CUSTOM PACKAGES
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



<div id="hero-area">
<div class="overlay"></div>
<div class="container">
<div class="row">
<div class="col-md-12 col-sm-12 text-center">
<div class="contents-ctg">
<div class="search-bar">
<div class="search-inner">

<%--<div class="form-group inputwithicon">
<i class="lni-tag"></i>
<input type="text" name="customword" runat="server" id="ser" class="form-control" placeholder="Enter Product Keyword">
</div>--%>
<div class="form-group inputwithicon">
<i class="lni-target"></i>
<div class="select">
     <asp:DropDownList ID="DropDownList1" runat="server">  
        </asp:DropDownList>
</div>
</div>
<div class="form-group inputwithicon">
<i class="lni-menu"></i>
<div class="select">
   <asp:DropDownList ID="DropDownList2" runat="server">  
        </asp:DropDownList>

</div>
</div>
<button class="btn btn-common" type="button" runat="server" onserverclick="Unnamed_ServerClick"><i class="lni-search"></i> Search Now</button>

</div>
</div>
</div>
</div>
</div>
</div>
</div>




<div class="main-container section-padding">
<div class="container">
<div class="row">
<div class="col-lg-1 col-md-12 col-xs-12 page-sidebar">

</div>
<div class="col-lg-9 col-md-12 col-xs-12 page-content">

<div class="product-filter">
<div class="short-name">
<span>Tour Package List</span>
</div>

<ul class="nav nav-tabs">
<li class="nav-item">
<a class="nav-link" data-toggle="tab" href="#grid-view"><i class="lni-grid"></i></a>
</li>
<li class="nav-item">
<a class="nav-link active" data-toggle="tab" href="#list-view"><i class="lni-list"></i></a>
</li>
</ul>
</div>


<div class="adds-wrapper">
<div class="tab-content">
<div id="grid-view" class="tab-pane fade">
<div class="row">
       <asp:Repeater ID="Repeater1" runat="server">  
                         <ItemTemplate>  
<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
<div class="featured-box">
<figure>


<a href="#"><img class="img-fluid" style="width:100%;height:200px" src="../upload/<%# Eval("PackageImage") %>" alt=""></a>
</figure>
<div class="feature-content">

<h4><a href="ads-details.html"><%# Eval("PackageName") %></a></h4>
<div class="meta-tag">
<span>
<a href="#"><i class="lni-user"></i>  <%# Eval("PackageType") %></a>
</span>
<span>
<a href="#"><i class="lni-map-marker"></i> <%# Eval("PackageLocation") %></a>
</span>
<span>
<a href="#"><i class="lni-tag"></i>  <%# Eval("Aname") %></a>
</span>
</div>
<p class="dsc"><%# Eval("PackageFetures") %></p>
<div class="listing-bottom">
<h3 class="price float-left">$249.00</h3>
<a href="#" class="btn btn-common float-right" onclick="reject(<%# Eval("PackageId") %>)">View Details</a>
</div>
</div>
</div>
</div>
      </ItemTemplate>  
        </asp:Repeater>
</div>
</div>
<div id="list-view" class="tab-pane fade active show">
<div class="row">
       <asp:Repeater ID="grid" runat="server">  
                         <ItemTemplate>  
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
<div class="featured-box">
<figure>

<div class="icon d-none">
<span class="bg-green"><i class="lni-heart"></i></span>
<span><i class="lni-bookmark"></i></span>
</div>
<a href="#"><img class="img-fluid" style="width:100%;height:223px" src="../upload/<%# Eval("PackageImage") %>" alt=""></a>
</figure>
<div class="feature-content" style="height:223px">

<h4><a href="ads-details.html"><%# Eval("PackageName") %></a></h4>
<div class="meta-tag">
<span>
<a href="#"><i class="lni-user"></i>  <%# Eval("PackageType") %></a>
</span>
<span>
<a href="#"><i class="lni-map-marker"></i>  <%# Eval("PackageLocation") %></a>
</span>
<span>
<a href="#"><i class="lni-tag"></i>  <%# Eval("Aname") %></a>
</span>
</div>
<p class="dsc"><%# Eval("PackageFetures") %></p>
<div class="listing-bottom">
<h3 class="price float-left d-none">$249.00</h3>
<a href="#" class="btn btn-common float-right" onclick="reject(<%# Eval("PackageId") %>)">View Details</a>
</div>
</div>
</div>
</div>
      </ItemTemplate>  
        </asp:Repeater>
</div>
</div>
</div>
</div>




</div>
    <div class="col-lg-2 col-md-12 col-xs-12 page-sidebar">

</div>
</div>
</div>
</div>




<footer>




<div id="copyright">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="site-info text-center">
<p><a target="_blank" href="index.aspx"> Copyright © 2024. All rights reserved</a></p>
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
            function reject(id) {
                /*    debugger;*/
                /* alert(id);*/
                window.location = "View_Details.aspx?id=" + id;
            }

        </script>
</html>