<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="Visitor.aspx.cs" Inherits="Village_Kiosk.View.Visitor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px">
 <h3 style="color: #CC0808; font-size:40px">GUEST</h3>
 <hr style="color: #CC0808; border-width: 5.5px; border-style:solid;"/>
 </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div style="background-color:rgba(255, 255, 255, 0.85);color:black;padding:20px;">

    <div align="center">
          <asp:Label id="visitorForId" runat="server" Visible="False"></asp:Label>

          <label><b>Visitor's Name</b></label>
         <asp:DropDownList ID="drpVisitorName" runat="server" 
            CssClass="w3-input w3-border w3-margin-bottom" 
            style="text-align:center; border-color:#000080" Width="600px" 
            AutoPostBack="True"   ></asp:DropDownList>

          <label><b>Person to Visit</b></label>
          <asp:DropDownList ID="drpPSV" runat="server" 
            CssClass="w3-input w3-border w3-margin-bottom" 
            style="text-align:center; border-color:#000080" Width="600px" 
            AutoPostBack="True" onselectedindexchanged="drpPSV_selected" >
            </asp:DropDownList>

           <label><b>Reason of Visit</b></label>
           <asp:TextBox ID="txtPurpose" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px"></asp:TextBox>

           <label><b>Mobile Number</b></label>
           <asp:TextBox ID="txtMobile" Enabled="false" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>


 
 <asp:Button ID="btnTimeIn" runat="server" Text="TIME IN" 
            CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" style="background-color: #CC0808 ; color: white"  Width="200px" 
            onclick="btnTimeIn_Click" />
   
         </div>

</div>

</asp:Content>
