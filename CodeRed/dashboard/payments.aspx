<%@ Page Title="" Language="C#" MasterPageFile="~/dashboard/Master.Master" AutoEventWireup="true" CodeBehind="payments.aspx.cs" Inherits="CodeRed.dashboard.payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <div class="page-header" style="background: url(assets/img/banner1.jpg);">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="breadcrumb-wrapper">
<h2 class="product-title">Dashbord</h2>
<ol class="breadcrumb">
<li><a href="#">Home /</a></li>
<li class="current">Dashboard</li>
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
<a href="#">
<i class="lni-enter"></i>
<span>Logout</span>
</a>
</li>
</ul>
</nav>
</div>

</aside>
</div>
<div class="col-sm-12 col-md-8 col-lg-9">
<div class="page-content">
<div class="inner-box">
<div class="dashboard-box">
<h2 class="dashbord-title">My Payment Details</h2>
</div>
<div class="dashboard-wrapper">

<table class="table table-responsive dashboardtable tablemyads">
<thead>
<tr>
<th>

</th>
<th>Card Details</th>
<th>Name On Card</th>
<th>Amount</th>
<th>PayedOn</th>
<th>Transaction Id</th>


</tr>
</thead>
<tbody>
      <asp:Repeater ID="grid" runat="server">  
                         <ItemTemplate> 
<tr data-category="active">
<td>

</td>

<td data-title="Title">
<h3><%# Eval("Fname") %></h3>
<span>Booking ID:<%# Eval("BookingID") %></span>
</td>
<td data-title="Price"><h3><%# Eval("NameOnCard") %> </h3></td>
<td data-title="Price"><h3><%# Eval("Amt") %> Rs</h3></td>
<td data-title="Price"><h3><%# Eval("CreatedOn") %> </h3></td>
<td data-title="Price"><h3><%# Eval("TransactionId") %> </h3></td>


<%--<td data-title="Action">
<div class="btns-actions">

        
 <td <%# Convert.ToString(Eval("PayStatus")) == "1"  ? "hidden=\"hidden\"" : "" %> > <a class="btn-action btn-view" href="#" onclick="Pay(<%# Eval("BookingID") %>)"><i class="fa fa-credit-card" aria-hidden="true"></i>Pay</a></td>
                                                          
                                                      
                                                  
   


 
</div>
</td>--%>

</tr>
 </ItemTemplate>  
        </asp:Repeater>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

        <script>
            function View(id) {
              
            /* alert(id);*/
            window.location = "View_Details.aspx?id=" + id;
        }

        </script>
      <script>
          function Pay(id) {

              /* alert(id);*/
              window.location = "Pay.aspx?id=" + id;
          }

      </script>

</asp:Content>
