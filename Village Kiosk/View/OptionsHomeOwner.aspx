<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="OptionsHomeOwner.aspx.cs" Inherits="Village_Kiosk.View.OptionsHomeOwner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <br />
    
 <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-home"></i></font> HOME OWNERS</h3>
 
 <hr style="color: #FAFAD2; border-width: 5.5px; width: 650px; border-style:outset;"/>
 <br />
 <br />
 <br />
 <table>
    <tr>
<td>
<asp:Button ID="btnNewHO" runat="server" Text="NEW" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding box-shadow" OnClick="btnNewHO_Click" Width="250px" Height="250px"  style="background-color: #ffffff ; color: #920000; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
</td>
<td>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Button ID="btnSearchHO" runat="server" Text="SEARCH" CssClass="w3-button  w3-hover-khaki w3-round-xlarge w3-section w3-padding box-shadow" OnClick="btnSearchHO_Click" Width="250px"  Height="250px" style="background-color: #ffffff ; color: #920000; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
 </td>
 </tr>
 </table>
 </div>
</asp:Content>
