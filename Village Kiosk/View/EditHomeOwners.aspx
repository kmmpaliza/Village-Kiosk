<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="EditHomeOwners.aspx.cs" Inherits="Village_Kiosk.View.EditHomeOwners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<br />
<br />
<br />
<br />
<br />
<br />
<div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px" >
 <h3 style="color: #CC0808; font-size:40px">UPDATE HOME OWNERS</h3>

 <hr style="color: #CC0808; border-width: 5.5px; border-style:solid;"/>
 </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<div style="background-color:rgba(255, 255, 255, 0.85);color:black">
    <div align="center">

        <br />
          <asp:Label id="forEditID" runat="server" Visible="False"></asp:Label>
          <label><b>Homeowner's Name (First Name, Middle Name, Last Name)</b></label>
          <asp:TextBox ID="txtEditHOName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>
          <label><b>Tenant Name</b></label>
          <asp:TextBox ID="txtEditTenantName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>
          <label><b>House Number</b></label>
          <asp:TextBox ID="txtEditHOHouseNumber" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>
          <label><b>Mobile Number</b></label>
          <asp:TextBox ID="txtEditHOMobileNumber" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>
         
   
      
       <asp:Button ID="btnUpdateHO" runat="server" Text="UPDATE" CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" OnClick="btnUpdate_Click" Width="200px"  style="background-color: #CC0808 ; color: white"/>
      <br />
      </div>
      </div>

      <br />
<br />
<br />

</asp:Content>
