<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Village_Kiosk.View.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <br />
<br />
<br />
<br />
<br />
<br />
<div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px">
 <h3 style="color: #CC0808; font-size:40px">SEARCH</h3>
 <hr style="color: #CC0808; border-width: 5.5px; border-style:solid;"/>
 </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<div style="background-color:rgba(255, 255, 255, 0.85);color:black;padding:20px;">

    <div align="center">
    
    

    <asp:Button ID="btnHomeOwner" CssClass="w3-button  w3-hover-white w3-round-xlarge w3-section " style="background-color: #CC0808 ; color: white" runat="server" Text="HOME OWNER" 
            onclick="btnHO_Click" Width="150px" />
    <asp:Button ID="btnGuest" CssClass="w3-button  w3-hover-white w3-round-xlarge " style="background-color: #CC0808 ; color: white" runat="server" Text="GUEST" 
            onclick="btnG_Click" Width="126px" />
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
</asp:Content>
