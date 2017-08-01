<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="EditHomeOwners.aspx.cs" Inherits="Village_Kiosk.View.EditHomeOwners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<br />
   <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-pencil-square-o"></i></font> EDIT</h3>

 <hr style="color: #FAFAD2; border-width: 5.5px; width: 850px; border-style:outset;"/>
 
    <div align="center">

        <br />
          <asp:Label id="forEditID" runat="server" Visible="False"></asp:Label>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Homeowner's Name</b></label>
          <asp:TextBox ID="txtEditHOName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder="First Name, Middle Name, Last Name"></asp:TextBox>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Tenant Name</b></label>
          <asp:TextBox ID="txtEditTenantName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>House Number</b></label>
          <asp:TextBox ID="txtEditHOHouseNumber" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Mobile Number</b></label>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  display = "Dynamic" ErrorMessage="Invalid" ControlToValidate="txtEditHOMobileNumber" ValidationExpression="^09[0-9][0-9]{8}$" ForeColor = "Red"></asp:RegularExpressionValidator>
          <asp:TextBox ID="txtEditHOMobileNumber" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>
         
   
      
       <asp:Button ID="btnUpdateHO" runat="server" Text="UPDATE" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding" OnClick="btnUpdate_Click" Width="200px"  style="background-color: #CC0808 ; color: white;font-size: 15px; font-family: Trebuchet MS;"/>
      <br />
      </div>
      </div>

      <br />
<br />
<br />

</asp:Content>
