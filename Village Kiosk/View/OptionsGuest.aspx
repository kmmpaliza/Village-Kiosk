<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="OptionsGuest.aspx.cs" Inherits="Village_Kiosk.View.OptionsGuest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   <br />
   <br />
   <div align="center">
<asp:Image ID="ImageButton1" runat="server" ImageUrl="~/Images/lblG.png" />
 <br />
 <br />
 <br />
 <table>
    <tr>
    <td>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</td>
<td>
<asp:ImageButton ID="btnLogIn" runat="server" ImageUrl="~/Images/btnloginG.png"  CssClass="w3-button  w3-hover-black w3-round-xlarge w3-section w3-padding box-shadow" OnClick="btnLoginG_Click"  style="background-color: #920000 ; color: White; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
</td>

<td>
&nbsp&nbsp&nbsp&nbsp
</td>
<td>
<asp:ImageButton ID="btnNewGuest" runat="server" ImageUrl="~/Images/btnnewHO.png"  CssClass="w3-button  w3-hover-black w3-round-xlarge w3-section w3-padding box-shadow" OnClick="btnNewG_Click"  style="background-color: #920000 ; color: White; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
</td>
<td>
&nbsp&nbsp&nbsp&nbsp
</td>
<td>
<asp:ImageButton ID="btnToday" runat="server" ImageUrl="~/Images/btnvisitorG.png"  CssClass="w3-button  w3-hover-black w3-round-xlarge w3-section w3-padding box-shadow" OnClick="btnToday_Click"  style="background-color: #920000 ; color: White; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>

</td>
<td>
&nbsp&nbsp&nbsp&nbsp
</td>

<td>
<asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/Images/btnsearchHO.png"  CssClass="w3-button  w3-hover-black w3-round-xlarge w3-section w3-padding box-shadow" OnClick="btnSearch_Click"  style="background-color: #920000 ; color: White; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>

</td>
<td>
&nbsp&nbsp&nbsp&nbsp
</td>


</tr></table></div>
</asp:Content>
