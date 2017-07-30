<%@ Page Title="" Language="C#" MasterPageFile="~/Master/LoginMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Village_Kiosk.View.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="w3-text-white">
 <h1><br />Please Login</h1>
 </div>
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div style="color: Black;">

     <div align="center">
<asp:TextBox ID="txtUsername" runat="server" 
              CssClass="w3-input w3-border w3-margin-bottom w3-border-red" Placeholder="Username" 
              Width="339px" style="text-align:center" ></asp:TextBox>
         
          <asp:TextBox ID="txtPassword" runat="server" 
              CssClass="w3-input w3-border w3-margin-bottom w3-border-red" placeholder="Password" 
              TextMode="Password" Width="339px"  style="text-align:center" ></asp:TextBox>
  
          <asp:Button ID="btnLogin" runat="server" Text="Login" 
              CssClass="w3-button  w3-block w3-red w3-section w3-padding centerButton w3-hover-white w3-round-xlarge" 
              OnClick="btnLogin_Click" Width="144px" Height="41px" BackColor="White"  />
             </div>
          </div>

   
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br /><br />
</asp:Content>
