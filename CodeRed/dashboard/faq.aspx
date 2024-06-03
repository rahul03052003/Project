<%@ Page Title="" Language="C#" MasterPageFile="~/dashboard/Master.Master" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="CodeRed.dashboard.faq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class="page-header" style="background: url(assets/img/banner1.jpg);">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="breadcrumb-wrapper">
<h2 class="product-title">FAQ</h2>
<ol class="breadcrumb">
<li><a href="#">Home /</a></li>
<li class="current">FAQ</li>
</ol>
</div>
</div>
</div>
</div>
</div>


<div class="faq section-padding">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="head-faq text-center">
<h2 class="section-title">Frequently Asked Questions</h2>
</div>

<div class="panel-group" id="accordion">

       <asp:Repeater ID="grid" runat="server">  
                         <ItemTemplate> 
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title">
<a data-toggle="collapse" data-parent="#accordion" href="#<%# Eval("collapse") %>">
<%# Eval("Question") %>
</a>
</h4>
</div>
<div id="<%# Eval("collapse") %>" class="panel-collapse collapse">
<div class="panel-body">
<p> <%# Eval("Anss") %></p>
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



</asp:Content>
