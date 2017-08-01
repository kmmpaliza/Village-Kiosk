<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="HomeOwners.aspx.cs" Inherits="Village_Kiosk.View.HomeOwners" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-home"></i></font> HOME OWNERS</h3>

 <hr style="color: #FAFAD2; border-width: 5.5px;width: 850px; border-style:outset;"/>
 <br />
 
          <asp:Label id="forID" runat="server" Visible="False"></asp:Label>
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtHomeOwnerName"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Homeowner's Name</b></label>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" display = "Dynamic" ErrorMessage="Invalid"  ForeColor = "Red" ControlToValidate="txtHomeOwnerName" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
          
          <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtHomeOwnerName" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{0,40}$" runat="server" ForeColor = "Red" ErrorMessage="Maximum of 40 Characters Only"></asp:RegularExpressionValidator>

          <asp:TextBox ID="txtHomeOwnerName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "First Name, Middle Name, Last Name"></asp:TextBox>
          

          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Tenant Name (Optional)</b></label>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" display = "Dynamic" ErrorMessage="Invalid"  ForeColor = "Red" ControlToValidate="txtTenantName" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
          <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtTenantName" ID="RegularExpressionValidator2" ValidationExpression = "^[\s\S]{0,40}$" runat="server" ForeColor = "Red" ErrorMessage="Maximum of 40 Characters Only"></asp:RegularExpressionValidator>
          
          <asp:TextBox ID="txtTenantName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "First Name, (Middle Name), Last Name"></asp:TextBox>
          

          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtHomeOwnerHouseNumber"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
            
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>House Number</b></label>
          
          <asp:TextBox ID="txtHomeOwnerHouseNumber" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Lot / Block / Phase" ></asp:TextBox>
          
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator3" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtHomeOwnerMobile"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Mobile Number</b></label>
          
          <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  display = "Dynamic" ErrorMessage="Invalid" ControlToValidate="txtHomeOwnerMobile" ValidationExpression="^09[0-9][0-9]{8}$" ForeColor = "Red"></asp:RegularExpressionValidator>
          
          <asp:TextBox ID="txtHomeOwnerMobile" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "09xxxxxxxxx"></asp:TextBox>
           
           <br />
          <asp:Button ID="btnADDHO" runat="server" Text="ADD" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding" OnClick="btnAdd_Click" Width="200px" style="background-color: white ; color: red ;font-size: 15px; font-family: Trebuchet MS; font-weight: bold"/>
         
      <br />
    
       </div>   
       <br />
<br />
</div>
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
