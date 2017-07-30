<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="EditGuest.aspx.cs" Inherits="Village_Kiosk.View.EditGuest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<br />
<br />
<br />
<br />
<br />
<br />
<div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px">
 <h3 style="color: #CC0808; font-size:40px">UPDATE GUESTS</h3>
 <hr style="color: #CC0808; border-width: 5.5px; border-style:solid;"/>
    </div>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div style="background-color:rgba(255, 255, 255, 0.85);color:black;padding:20px;">
    <div align="center">
          <asp:Label id="guestForId" runat="server" Visible="False"></asp:Label>
          <label><b>Guest's Name  (First Name, Middle Name, Last Name)</b></label>
          <asp:TextBox ID="txtGuestName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>
          <label><b>Person to Visit</b></label>
          <asp:DropDownList ID="drpPSV" runat="server" 
            CssClass="w3-input w3-border w3-margin-bottom" 
            style="text-align:center; border-color:#000080" Width="600px" 
            AutoPostBack="True" onselectedindexchanged="selected_drpPSV" ></asp:DropDownList>
           <label> <b>Mobile Number</b></label>
          <asp:TextBox ID="txtGuestMobile" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>
          <label><b>Photo</b></label>
           <asp:FileUpload ID="fPhoto" runat="server" accept=".jpg, .jpeg, .png" />
         
       
          <asp:Button ID="btnUpdateG" runat="server" Text="UPDATE" CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" OnClick="btnUpdate_Click" Width="200px" style="background-color: #CC0808 ; color: white"/>
      <br />

  </div>   

</div>



</asp:Content>
