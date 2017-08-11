<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="OptionsHomeOwner.aspx.cs" Inherits="Village_Kiosk.View.OptionsHomeOwner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <br />
    <br />
 <div align="center">
 <asp:Image ID="ImageButton1" runat="server" ImageUrl="~/Images/lblHO.png" />
 <br />
 <br />
 <br />
 <table>
    <tr>
<td>
<asp:ImageButton ID="btnNewHO" runat="server" ImageUrl="~/Images/btnNewHO.png"   OnClick="btnNewHO_Click" CssClass="w3-button  w3-hover-black w3-round-xlarge w3-section w3-padding box-shadow" style="background-color: #920000 ; color: White; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
</td>
<td>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:ImageButton ID="btnSearchHO" runat="server" ImageUrl="~/Images/btnsearchHO.png"  CssClass="w3-button  w3-hover-black w3-round-xlarge w3-section w3-padding box-shadow" OnClick="btnSearchHO_Click"  style="background-color: #920000 ; color: White; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
 </td>
 </tr>
 </table>
 </div>
</asp:Content>
