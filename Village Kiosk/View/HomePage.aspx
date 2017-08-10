<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Village_Kiosk.View.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">


<div class="slideshow-container " align="center">

<div class="mySlides ">
  <img src="../Uploads/Chrysanthemum.jpg" style="width:70%">
</div>

<div class="mySlides ">
  <img src="../Uploads/Tulips.jpg" style="width:70%">
</div>

<div class="mySlides ">
  <img src="../Uploads/Penguins.jpg" style="width:70%">
</div>


</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
