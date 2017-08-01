<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="OptionsGuest.aspx.cs" Inherits="Village_Kiosk.View.OptionsGuest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   <br />
   <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-male"></i></font> GUESTS</h3>

 <hr style="color: #FAFAD2; border-width: 5.5px; width: 850px; border-style:outset;"/>
 <br />
 <br />
 <br />
 <table>
    <tr>
<td>
<asp:Button ID="btnLogIn" runat="server" Text="LOG IN" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding box-shadow" OnClick="btnLoginG_Click" Width="230px" Height="230px" style="background-color: #ffffff ; color: #920000; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
</td>
<td>
&nbsp&nbsp&nbsp&nbsp
</td>
<td>
<asp:Button ID="btnNewGuest" runat="server" Text="NEW" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding box-shadow" OnClick="btnNewG_Click" Width="230px" Height="230px" style="background-color: #ffffff ; color: #920000; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
</td>
<td>
&nbsp&nbsp&nbsp&nbsp
</td>
<td>
<asp:Button ID="btnToday" runat="server" Text="TODAY'S VISIT" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding box-shadow" OnClick="btnToday_Click" Width="230px" Height="230px" style="background-color: #ffffff ; color: #920000; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
</td>
<td>
&nbsp&nbsp&nbsp&nbsp
</td>
<td>
<asp:Button ID="btnVisit" runat="server" Text="VISIT" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding box-shadow" OnClick="btnVisit_Click" Width="230px" Height="230px" style="background-color: #ffffff ; color: #920000; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
</td>
<td>
&nbsp&nbsp&nbsp&nbsp
</td>
<td>
<asp:Button ID="btnSearch" runat="server" Text="SEARCH" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding box-shadow" OnClick="btnSearch_Click" Width="230px" Height="230px" style="background-color: #ffffff ; color: #920000; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
</td>
<td>
&nbsp&nbsp&nbsp&nbsp
</td>


</tr>
</asp:Content>
