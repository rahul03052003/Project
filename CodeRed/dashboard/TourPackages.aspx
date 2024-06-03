<%@ Page Title="" Language="C#" MasterPageFile="~/dashboard/Master.Master" AutoEventWireup="true" CodeBehind="TourPackages.aspx.cs" Inherits="CodeRed.dashboard.TourPackages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <!-- Include Select2 CSS -->
<%--  <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />--%>

  <!-- Include jQuery -->
<%--  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>

  <!-- Include Select2 JS -->
<%--  <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>--%>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
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
  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="select2-dropdown"></asp:DropDownList>
</div>
</div>

    <script>
        $(document).ready(function () {
            $('.select2-dropdown').select2();
        });
    </script>
<div class="form-group inputwithicon">
<i class="lni-menu"></i>
<div class="select">
   <asp:DropDownList ID="DropDownList2" runat="server">  
        </asp:DropDownList>
<%--<select>
<option value="none">Select Categories</option>
<option value="none">Mobiles</option>
<option value="none">Electronics</option>
<option value="none">Training</option>
<option value="none">Real Estate</option>
<option value="none">Services</option>
<option value="none">Training</option>
<option value="none">Vehicles</option>
</select>--%>
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
    <div class="col-lg-1 col-md-12 col-xs-12 page-sidebar">

</div>
</div>
</div>
</div>
       <script>
           function reject(id) {
               /*    debugger;*/
               /* alert(id);*/
               window.location = "View_Details.aspx?id=" + id;
           }

       </script>
</asp:Content>

 
