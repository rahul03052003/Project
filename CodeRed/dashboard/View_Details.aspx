<%@ Page Title="" Language="C#" MasterPageFile="~/dashboard/Master.Master" AutoEventWireup="true" CodeBehind="View_Details.aspx.cs" Inherits="CodeRed.dashboard.View_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
<li> <%# Eval("CreationDate") %></li>
</ul>
    <h4 class="title-small mb-3">Package Fetures</h4>
<p class="mb-4">
    <%# Eval("PackageFetures") %>
</p>
</div>

</div>



</div>
         </ItemTemplate>  
        </asp:Repeater>


<div class="col-lg-4 col-md-6 col-xs-12">

<aside class="details-sidebar">
<div class="widget">
<h4 class="widget-title">Trip Posted By</h4>
<div class="agent-inner">
<div class="agent-title">
<div class="agent-photo">

</div>
<div class="agent-details">
<%--<h3><a href="#"> <%# Eval("AgencyName") %></a></h3>
<span><i class="lni-phone-handset"></i> <%# Eval("phone") %></span>--%>
</div>
</div>
 <label>From</label>
<input type="date" id="strDate" runat="server" class="form-control datepicker">
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>--%>
<%--<input type="date" id="txtDate" />--%>
  <%--  <script>$(function () {
            var dtToday = new Date();

            var month = dtToday.getMonth() + 1;
            var day = dtToday.getDate();
            var year = dtToday.getFullYear();
            if (month < 10)
                month = '0' + month.toString();
            if (day < 10)
                day = '0' + day.toString();

            var maxDate = year + '-' + month + '-' + day;

            // or instead:
            // var maxDate = dtToday.toISOString().substr(0, 10);

         /*   alert(maxDate);*/
    $('#txtDate').attr('min', maxDate);
        });</script>--%>

    <script>
        $(function () {
            $(".datepicker").datepicker({
                minDate: new Date()
            });
        });
    </script>
     <label>To</label>
<input type="date" class="form-control" id="ldate" runat="server">
<button class="btn btn-common fullwidth mt-4" runat="server" onserverclick="Unnamed_ServerClick">Book</button>
    <%--<a href="" class="btn btn-common fullwidth mt-4" data-toggle="modal" data-target="#modalLoginForm">Book</a>--%>

   
</div>
</div>


</aside>

</div>
                            


</div>

</div>
</div>
</asp:Content>
