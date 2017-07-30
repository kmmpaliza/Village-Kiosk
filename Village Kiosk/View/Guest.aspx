<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="Guest.aspx.cs" Inherits="Village_Kiosk.View.Guest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px">
 <h3 style="color: #CC0808; font-size:40px">GUESTS</h3>
 <hr style="color: #CC0808; border-width: 5.5px; border-style:solid;"/>
 </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div style="background-color:rgba(255, 255, 255, 0.85);color:black;padding:20px;">
    <div align="center">
          <asp:Label id="guestForId" runat="server" Visible="False"></asp:Label>
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtGuestName"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label><b>Guest's Name  (First Name, Middle Name, Last Name)</b></label>
          <asp:TextBox ID="txtGuestName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Please Enter Your Full Name" ></asp:TextBox>
          
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtGuestName"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label><b>Mobile Number</b></label>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  display = "Dynamic" ErrorMessage="Invalid" ControlToValidate="txtGuestMobile" ValidationExpression="^[0-9]*$" ForeColor = "Red"></asp:RegularExpressionValidator>
          <asp:TextBox ID="txtGuestMobile" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Please Enter Your Mobile Number"></asp:TextBox>
          <label><b>Photo</b></label>
         

           <asp:FileUpload ID="fPhoto" runat="server" accept=".jpg, .jpeg, .png" />
         
          <asp:Button ID="btnADDG" runat="server" Text="ADD" CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" OnClick="btnAdd_Click" Width="200px" style="background-color: #CC0808 ; color: white" />

  </div>   

</div>

</asp:Content>
