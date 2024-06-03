<%@ Page Title="" Language="C#" MasterPageFile="~/dashboard/Master.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="CodeRed.dashboard.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header" style="background: url(assets/img/banner1.jpg);">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="breadcrumb-wrapper">
<h2 class="product-title">Profile Settings</h2>
<ol class="breadcrumb">
<li><a href="#">Home /</a></li>
<li class="current">Profile Settings</li>
</ol>
</div>
</div>
</div>
</div>
</div>


<div id="content" class="section-padding">
<div class="container">
<div class="row">
<div class="col-sm-12 col-md-4 col-lg-3 page-sidebar">
<aside>
<div class="sidebar-box">
<div class="user">
<figure>
<a href="#"><img src="assets/img/author/img1.jpg" alt=""></a>
</figure>
<div class="usercontent">
<h3>Hello  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
<h4>Welcome Back</h4>
</div>
</div>
<nav class="navdashboard">
<ul>
<li>
<a class="active" href="index.aspx">
<i class="lni-dashboard"></i>
<span>Dashboard</span>
</a>
</li>
<li>
<a href="profile.aspx">
<i class="lni-cog"></i>
<span>Profile Settings</span>
</a>
</li>


<li>
<a href="payments.aspx">
<i class="lni-wallet"></i>
<span>Payments</span>
</a>
</li>


<li>
<a href="../index.aspx">
<i class="lni-enter"></i>
<span>Logout</span>
</a>
</li>
</ul>
</nav>
</div>
<div class="widget">
<h4 class="widget-title">Advertisement</h4>
<div class="add-box">
<img class="img-fluid" src="assets/img/img1.jpg" alt="">
</div>
</div>
</aside>
</div>
<div class="col-sm-12 col-md-8 col-lg-9">
<div class="row page-content">
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-7">
<div class="inner-box">
<div class="dashboard-box">
<h2 class="dashbord-title">My Detail</h2>
</div>
<div class="dashboard-wrapper">
<div class="form-group mb-3">
<label class="control-label">Name</label>
<input class="form-control input-md" name="Title" placeholder="Title" type="text" id="uname" runat="server">
</div>
<div class="form-group mb-3">
<label class="control-label">Email</label>
<input class="form-control input-md" name="Title" placeholder="Title" type="text" id="email" readonly="readonly" runat="server">
</div>
<div class="form-group mb-3">
<label class="control-label">Phone</label>
<input class="form-control input-md" name="price" placeholder="Ad your Price" id="phn" type="text" runat="server">


</div>

    <button class="btn btn-common" type="button" runat="server" onserverclick="Unnamed_ServerClick">Update</button>
</div>
</div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-5">
<div class="inner-box">
<div class="tg-contactdetail">
<div class="dashboard-box">
<h2 class="dashbord-title">Change Password</h2>
</div>
<div class="dashboard-wrapper">

<div class="form-group mb-3">
<label class="control-label">Old Password*</label>
<input class="form-control input-md" name="name" type="text" runat="server" required="required" id="opswd">
</div>
<div class="form-group mb-3">
<label class="control-label">New Password*</label>
<input class="form-control input-md" name="name" type="text" runat="server" required="required" id="npswd">
</div>
<div class="form-group mb-3">
<label class="control-label">Re-enter New Password*</label>
<input class="form-control input-md" name="phone" type="text" runat="server" required="required" id="cpswd">
     <span id='message'></span>
</div>


    <input type="submit" class="btn btn-common" value="Submit" runat="server" onserverclick="Unnamed_ServerClick1" />
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

        <script>
            $('#npswd, #cpswd').on('keyup', function () {
                if ($('#npswd').val() == $('#cpswd').val()) {
                $('#message').html('Matching').css('color', 'green');
            } else
                $('#message').html('Not Matching').css('color', 'red');
        });
        </script>
</asp:Content>
