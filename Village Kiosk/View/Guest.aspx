<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="Guest.aspx.cs" Inherits="Village_Kiosk.View.Guest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<br />
   <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-male"></i></font><font size="10px"> NEW GUEST</h3></font>

 <hr style="color: #FAFAD2; border-width: 5.5px; width: 680px; border-style:outset;"/>
    <div align="center">
          <asp:Label id="guestForId" runat="server" Visible="False"></asp:Label>
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtGuestName"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Guest's Name</b></label><br />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" display = "Dynamic" ErrorMessage="Please Input Valid Name"  ForeColor = "Red" ControlToValidate="txtGuestName" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
          
          <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtGuestName" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{0,40}$" runat="server" ForeColor = "Red" ErrorMessage="Maximum of 40 Characters Only"></asp:RegularExpressionValidator>

          <asp:TextBox ID="txtGuestName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "First Name, Middle Name, Last Name" ></asp:TextBox>
          
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtGuestName"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Mobile Number</b></label><br />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  display = "Dynamic" ErrorMessage="Please Input Valid Number" ControlToValidate="txtGuestMobile" ValidationExpression="^09[0-9][0-9]{8}$" ForeColor = "Red"></asp:RegularExpressionValidator>
          <asp:TextBox ID="txtGuestMobile" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "09xxxxxxxxx"></asp:TextBox>
          
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator4" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtHouseNo"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Address</b></label>
          <asp:TextBox ID="txtHouseNo" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "House No. / Blk / Street"></asp:TextBox>
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator3" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtBarangay"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Barangay</b></label>
          <asp:TextBox ID="txtBarangay" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Please Enter Your Barangay"></asp:TextBox>
          

            <asp:RequiredFieldValidator 
             id="RequiredFieldValidator5" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtMuni"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>City/Municipality</b></label><br />
           <asp:TextBox ID="txtMuni" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Please Enter Your Municipality"></asp:TextBox>
            
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Photo</b></label>
         
<table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center">
            <u style="color: #ffffff; font-size: 15px; font-family: Trebuchet MS; font-weight:bold">Live Camera</u>
        </td>
        <td>
        </td>
        <td align="center">
            <u style="color: #ffffff; font-size: 15px; font-family: Trebuchet MS; font-weight:bold">Captured Picture</u>
        </td>
    </tr>
    <tr>
        <td>
            <div id="webcam">
            </div>
        </td>
        <td>
            &nbsp;
        </td>
        <td>
            <asp:Image ID="imgCapture" runat="server" Style="visibility: hidden; width: 320px;
                height: 240px" />
        </td>
    </tr>
</table>
<br />
<asp:Button ID="btnCapture" Text="Capture" runat="server" OnClientClick="return Capture();" />
<br />

         
          <asp:Button ID="btnADDG" runat="server" Text="ADD" CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" OnClick="btnAdd_Click" Width="200px" style="background-color: #CC0808 ; color: white" />

  </div>   

</div>
</asp:Content>
