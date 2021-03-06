﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="Visitor.aspx.cs" Inherits="Village_Kiosk.View.Visitor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<br />
    
 <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-male"></i></font><font size="10px"> LOGIN GUEST</h3></font>
 
 <hr style="color: #FAFAD2; border-width: 5.5px; width: 680px; border-style:outset;"/>
 <br />
          <asp:Label id="visitorForId" runat="server" Visible="False"></asp:Label>
           <asp:RequiredFieldValidator 
             id="RequiredFieldValidator3" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="drpVisitorName"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Visitor's Name</b></label>
         <asp:DropDownList ID="drpVisitorName" runat="server" 
            CssClass="w3-input w3-border w3-margin-bottom" 
            style="text-align:center; border-color:#000080" Width="600px" 
            AutoPostBack="True"   ></asp:DropDownList>

          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Person to Visit</b></label>
          <asp:DropDownList ID="drpPSV" runat="server" 
            CssClass="w3-input w3-border w3-margin-bottom" 
            style="text-align:center; border-color:#000080" Width="600px" 
            AutoPostBack="True" onselectedindexchanged="drpPSV_selected" >
            </asp:DropDownList>

            <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="drpPurpose"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
           <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Reason of Visit</b></label>
           <br />
           <asp:DropDownList ID="drpPurpose" runat="server" Width="350px" Height="30px"  AutoPostBack="true"
            onselectedindexchanged="drpPurpose_Selected">
           
            <asp:ListItem Text="Select Purpose:" Value="0"></asp:ListItem>
            <asp:ListItem Text="Regular Visit" Value="1">
            </asp:ListItem><asp:ListItem Text="Celebration" Value="2">
            </asp:ListItem><asp:ListItem Text="Subdivision Event" Value="3">
            </asp:ListItem><asp:ListItem Text="Others" Value="4"></asp:ListItem></asp:DropDownList>
           <br />
            <br />
           <asp:TextBox ID="txtPurpose" runat="server" Enabled="false" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px"></asp:TextBox>

           <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold" placeholder = "09xxxxxxxxx"><b>Mobile Number</b></label>
           <asp:TextBox ID="txtMobile" Enabled="false" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>


 
 <asp:Button ID="btnTimeIn" runat="server" Text="TIME IN" 
            CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding" style="background-color: white ; color: red ;font-size: 15px; font-family: Trebuchet MS; font-weight: bold"  Width="200px" 
            onclick="btnTimeIn_Click" />
   
         </div>

</div>

</asp:Content>
