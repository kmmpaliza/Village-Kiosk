<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="HomeOwners.aspx.cs" Inherits="Village_Kiosk.View.HomeOwners" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px" >
 <h3 style="color: #CC0808; font-size:40px">HOME OWNERS</h3>

 <hr style="color: #CC0808; border-width: 5.5px; border-style:solid;"/>
 </div>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



<div style="background-color:rgba(255, 255, 255, 0.85);color:black">
    <div align="center">
          <asp:Label id="forID" runat="server" Visible="False"></asp:Label>
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtHomeOwnerName"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label><b>Homeowner's Name (First Name, Middle Name, Last Name)</b></label>
          
          <asp:TextBox ID="txtHomeOwnerName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Please Enter Your Full Name"></asp:TextBox>
          

          <label><b>Tenant Name (Optional)</b></label>
          <asp:TextBox ID="txtTenantName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Enter The Tenant's Name"></asp:TextBox>
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtHomeOwnerHouseNumber"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label><b>House Number</b></label>
          
          <asp:TextBox ID="txtHomeOwnerHouseNumber" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Please Enter Your House Number" ></asp:TextBox>
          
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator3" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtHomeOwnerMobile"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label><b>Mobile Number</b></label>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  display = "Dynamic" ErrorMessage="Invalid" ControlToValidate="txtHomeOwnerMobile" ValidationExpression="^[0-9]*$" ForeColor = "Red"></asp:RegularExpressionValidator>
          
          <asp:TextBox ID="txtHomeOwnerMobile" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Please Enter Your Mobile Number"></asp:TextBox>
           <asp:HyperLink ID="lnkTwilio" runat="server" NavigateUrl="https://www.twilio.com/login?g=%2Fconsole&t=269b703bb7bfd748412c1252bff6e4fc26321203dc2ea1a50ed8c44644980a24" Text="Twilio Console" Target="_blank"></asp:HyperLink>

          <asp:Button ID="btnADDHO" runat="server" Text="ADD" CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" OnClick="btnAdd_Click" Width="200px"  style="background-color: #CC0808 ; color: white"/>
         
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
