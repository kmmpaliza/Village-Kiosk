<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="OptionAdmin.aspx.cs" Inherits="Village_Kiosk.View.OptionAdmin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<br />
<br />
<div align="center">

<asp:Image ID="ImageButton1" runat="server" ImageUrl="~/Images/lblA.png" />
 <br />
 <br />
 <br />
 <table>
    <tr>
<td>
<asp:ImageButton ID="btnNew" runat="server" ImageUrl="~/Images/btnNewHO.png"   OnClick="btnNew_Click" CssClass="w3-button  w3-hover-black w3-round-xlarge w3-section w3-padding box-shadow" style="background-color: #920000 ; color: White; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
</td>
<td>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<asp:ImageButton ID="btnView" runat="server" ImageUrl="~/Images/btnView.png"   OnClick="btnView_Click" CssClass="w3-button  w3-hover-black w3-round-xlarge w3-section w3-padding box-shadow" style="background-color: #920000 ; color: White; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>

 </td>
 </tr>
 </table>

 <center>
             
             <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
                       PopupControlID="Panel1" CancelControlID="btnCancel" 
                       TargetControlID="btnView" BackgroundCssClass="modalBackground" Drag="true">
             </asp:ModalPopupExtender>


            <asp:Panel ID="Panel1" runat="server" CssClass="modalBackground" Style="display: none">

    <div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px">
    
    <asp:Label ID="lbl1" runat ="server"> USERNAME: </asp:Label><br />
    <asp:TextBox ID="txtUsername" runat="server" placeholder="Type your username"></asp:TextBox><br />
    <asp:Label ID="lbl2" runat ="server"> PASSWORD: </asp:Label><br />
    <asp:TextBox ID="txtPassword" runat="server" placeholder="Type your password" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSub" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass=" w3-button w3-block w3-hover-white w3-round-xlarge" style="background-color: #CC0808 ; color: white" Width="300px"  />
    <br />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass=" w3-button w3-block w3-hover-white w3-round-xlarge" style="background-color: #CC0808 ; color: white" Width="300px"  />
    <br />
    </div>
    </asp:Panel>
</center>


 </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
