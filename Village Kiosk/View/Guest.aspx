<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="Guest.aspx.cs" Inherits="Village_Kiosk.View.Guest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<br />
   <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-male"></i></font> NEW GUEST</h3>

 <hr style="color: #FAFAD2; border-width: 5.5px; width: 850px; border-style:outset;"/>
    <div align="center">
          <asp:Label id="guestForId" runat="server" Visible="False"></asp:Label>
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtGuestName"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Guest's Name  </b></label>
         <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtGuestName" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{0,40}$" runat="server" ForeColor = "Red" ErrorMessage="Maximum of 40 Characters Only"></asp:RegularExpressionValidator>
          <asp:TextBox ID="txtGuestName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "First Name, Middle Name, Last Name" ></asp:TextBox>
          
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtGuestName"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Mobile Number</b></label>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  display = "Dynamic" ErrorMessage="Invalid" ControlToValidate="txtGuestMobile" ValidationExpression="^09[0-9][0-9]{8}$" ForeColor = "Red"></asp:RegularExpressionValidator>
          <asp:TextBox ID="txtGuestMobile" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "09xxxxxxxxx"></asp:TextBox>
          
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Address</b></label>
          <asp:TextBox ID="txtHouseNo" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "House No./Blk/Street"></asp:TextBox>

          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Photo</b></label>
           <asp:FileUpload ID="fPhoto" runat="server" accept=".jpg, .jpeg, .png" />
         
          <asp:Button ID="btnADDG" runat="server" Text="ADD" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding" OnClick="btnAdd_Click" Width="200px" style="background-color: white ; color: red ;font-size: 15px; font-family: Trebuchet MS; font-weight: bold" />

  </div>   

</div>

</asp:Content>
