<%@ Page Title="" Language="C#" MasterPageFile="~/dashboard/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CodeRed.dashboard.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-slide" class="carousel slide" data-ride="carousel">
<div class="carousel-inner">
<div class="carousel-item active">
<img class="d-block w-100" src="assets/img/slider/slider-bg1.jpg" alt="First slide">
<div class="carousel-caption d-md-block">
<h1 class="animated wow fadeInDown hero-heading" data-wow-delay=".4s">Welcome to The Largest Trip Makers</h1>
<p class="animated fadeInUp wow hero-sub-heading" data-wow-delay=".6s">Customize your trip plane</p>
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
</asp:Content>
