<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="OptionsMessage.aspx.cs" Inherits="Village_Kiosk.View.OptionsMessage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <br />
   <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-envelope"></i></font> MESSAGE</h3>

 <hr style="color: #FAFAD2; border-width: 5.5px; width: 720px; border-style:outset;"/>
    <asp:Button ID="btnMsg" runat="server" Text="SEND MESSAGE" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding" OnClick="btnSendMsg_Click" Width="300px" Height="130px"  style="background-color: #ffffff ; color: #920000; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
<asp:Button ID="btnMsgAll" runat="server" Text="SEND MESSAGE TO ALL" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding" OnClick="btnSendMsgA_Click" Width="300px" Height="130px"  style="background-color: #ffffff ; color: #920000; font-size: 26px; font-family: Trebuchet MS; font-weight:bold"/>
<asp:Button ID="btnSent" runat="server" Text="SENT ITEMS" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding" OnClick="btnSent_Click" Width="300px" Height="130px"  style="background-color: #ffffff ; color: #920000; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
</asp:Content>
