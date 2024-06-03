<%@ Page Title="" Language="C#" MasterPageFile="~/dashboard/Master.Master" AutoEventWireup="true" CodeBehind="MyTour.aspx.cs" Inherits="CodeRed.dashboard.MyTour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   



<%--   <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap4.min.css">
   

   

    


    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap4.min.js"></script>--%>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


  
            <div class="section-padding">
<div class="container">
    <h1>Your Trip List</h1>
    <div class="product-info row">
  <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Booking ID</th>
                <th>Package Name</th>
                <th>From</th>
                <th>To</th>
                <th>Agency Name</th>
                <th>Booking Date</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
              <asp:Repeater ID="grid" runat="server">  
                         <ItemTemplate>  
            <tr>
                <td><%# Eval("BookingID") %></td>
                <td><%# Eval("PackageName") %></td>
                <td><%# Eval("Fdate") %></td>
                <td><%# Eval("Ldate") %></td>
                <td><%# Eval("Aid") %></td>
                <td><%# Eval("CreationDate") %></td>
                <td><%# Eval("Status") %></td>
                <td><%# Eval("Status") %></td>
            </tr>
              </ItemTemplate>  
        </asp:Repeater>
      
    </table>
</div>
</div>
</div>

    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });</script>
</asp:Content>
