<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Village_Kiosk.View.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">


<div class="slideshow-container ">
<div align="center">
<asp:Image ID="ImageButton1" runat="server" ImageUrl="~/Images/lblWelcome.png" />
<br />
<br />
<div class="mySlides ">
  <img src="../Uploads/pic1.jpg" style="width:70%">
</div>

<div class="mySlides ">
  <img src="../Uploads/pic2.jpg" style="width:70%">
</div>

<div class="mySlides ">
  <img src="../Uploads/pic3.jpg" style="width:70%">
</div>


</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
</div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
