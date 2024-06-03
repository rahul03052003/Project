<%@ Page Title="" Language="C#" MasterPageFile="~/dashboard/Master.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CodeRed.dashboard.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="content" class="section-padding">
<div class="container">
<div class="row">
    <div class="col-lg-2 col-md-8 col-xs-12">
        </div>
<div class="col-lg-8 col-md-8 col-xs-12">


<h2 class="contact-title">
Send Message Us
</h2>  <span style="color:red">(NOTE: you can Request your Own Package here, One of our Agency Will Upload the Trip Package as Ur Request)</span>
<div class="row">
<div class="col-md-12">
<div class="row">
<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
<div class="form-group">
<input type="text" class="form-control" id="name" name="name" placeholder="Name" required data-error="Please enter your name" runat="server">
<div class="help-block with-errors"></div>
</div>
</div>
<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
<div class="form-group">
<input type="email" class="form-control" id="email" placeholder="Email" required data-error="Please enter your email" runat="server">
<div class="help-block with-errors"></div>
</div>
</div>
<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
<div class="form-group">
<input type="text" class="form-control" id="msg_subject" name="subject" placeholder="Subject" required data-error="Please enter your subject" runat="server">
<div class="help-block with-errors"></div>
</div>
</div>
</div>
</div>
<div class="col-sm-12 col-md-12 col-lg-12">
<div class="row">
<div class="col-md-12">
<div class="form-group">
<textarea class="form-control" placeholder="Massage" id="msg" rows="7" data-error="Write your message" required runat="server"></textarea>
<div class="help-block with-errors"></div>
</div>
</div>
</div>
 </div>
<div class="col-md-12">
<button type="submit" id="submit" class="btn btn-common" runat="server" onserverclick="Unnamed_ServerClick">Submit Now</button>
<div id="msgSubmit" class="h3 text-center hidden"></div>
<div class="clearfix"></div>
</div>
</div>

</div>
        <div class="col-lg-2 col-md-8 col-xs-12">
        </div>
</div>
</div>
</section>
</asp:Content>
