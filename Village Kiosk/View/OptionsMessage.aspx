<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="OptionsMessage.aspx.cs" Inherits="Village_Kiosk.View.OptionsMessage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px" >
 <h3 style="color: #CC0808; font-size:40px">MESSAGE</h3>

 <hr style="color: #CC0808; border-width: 5.5px; border-style:solid;"/>
 </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="btnMsg" runat="server" Text="SEND MESSAGE" CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" OnClick="btnSendMsg_Click" Width="200px"  style="background-color: #CC0808 ; color: white"/>
<asp:Button ID="btnMsgAll" runat="server" Text="SEND MESSAGE TO ALL" CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" OnClick="btnSendMsgA_Click" Width="200px"  style="background-color: #CC0808 ; color: white"/>
<asp:Button ID="btnSent" runat="server" Text="SENT ITEMS" CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" OnClick="btnSent_Click" Width="200px"  style="background-color: #CC0808 ; color: white"/>
</asp:Content>
