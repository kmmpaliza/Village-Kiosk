<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="OptionsMessage.aspx.cs" Inherits="Village_Kiosk.View.OptionsMessage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <br />
    <br />
   <div align="center">
 <asp:Image ID="ImageButton1" runat="server" ImageUrl="~/Images/lblMB.png" />
 <br />
 <br />
 <asp:ImageButton ID="btnMsg" runat="server" ImageUrl="~/Images/btnSend.png"   OnClick="btnSendMsg_Click" CssClass="w3-button  w3-hover-black w3-round-xlarge w3-section w3-padding box-shadow" style="background-color: #920000 ; color: White; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
   <br /> 
<asp:ImageButton ID="btnMsgAll" runat="server" ImageUrl="~/Images/btnGroup.png"   OnClick="btnSendMsgA_Click" CssClass="w3-button  w3-hover-black w3-round-xlarge w3-section w3-padding box-shadow" style="background-color: #920000 ; color: White; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
<br />
<asp:ImageButton ID="btnSent" runat="server" ImageUrl="~/Images/btnSent.png"   OnClick="btnSent_Click" CssClass="w3-button  w3-hover-black w3-round-xlarge w3-section w3-padding box-shadow" style="background-color: #920000 ; color: White; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>

</asp:Content>
