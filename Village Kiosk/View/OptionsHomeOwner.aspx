<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="OptionsHomeOwner.aspx.cs" Inherits="Village_Kiosk.View.OptionsHomeOwner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px" >
 <h3 style="color: #CC0808; font-size:40px">HOME OWNERS</h3>

 <hr style="color: #CC0808; border-width: 5.5px; border-style:solid;"/>
 </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:Button ID="btnNewHO" runat="server" Text="NEW" CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" OnClick="btnNewHO_Click" Width="200px"  style="background-color: #CC0808 ; color: white"/>
<asp:Button ID="btnSearchHO" runat="server" Text="SEARCH" CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" OnClick="btnSearchHO_Click" Width="200px"  style="background-color: #CC0808 ; color: white"/>

</asp:Content>
