<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="EditGuest.aspx.cs" Inherits="Village_Kiosk.View.EditGuest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<br />
   <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-pencil-square-o"></i></font> EDIT</h3>

 <hr style="color: #FAFAD2; border-width: 5.5px; width: 850px; border-style:outset;"/>
 
    <div align="center">

        <br />
        <asp:Label id="guestForId" runat="server" Visible="False"></asp:Label>
          <label><b>Guest's Name  (First Name, Middle Name, Last Name)</b></label>
          <asp:TextBox ID="txtGuestName" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>
        
           <label> <b>Mobile Number</b></label>
          <asp:TextBox ID="txtGuestMobile" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" ></asp:TextBox>
          
          <label><b>House No./Blk/Street</b></label>
          <asp:TextBox ID="txtHouseNo" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Please Enter Your House Number"></asp:TextBox>

          <label><b>Barangay</b></label>
          <asp:TextBox ID="txtBarangay" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Please Enter Your Barangay"></asp:TextBox>
          
          <label><b>City/Municipality</b></label><br />
          <asp:DropDownList ID="drpMun" runat="server" Width="350px" Height="30px"  AutoPostBack="true"
           >
            <asp:ListItem Enabled="true" Text="Select Municipality:" Value="0">
            </asp:ListItem><asp:ListItem Text="Bacoor" Value="1">
            </asp:ListItem><asp:ListItem Text="Carmona" Value="2">
            </asp:ListItem><asp:ListItem Text="Laguna" Value="3">
            </asp:ListItem><asp:ListItem Text="Dasmarinas" Value="4"></asp:ListItem></asp:DropDownList>

            <br />
          <label><b>Photo</b></label>
           <table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center">
            <u>Live Camera</u>
        </td>
        <td>
        </td>
        <td align="center">
            <u>Captured Picture</u>
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
          <asp:Button ID="btnUpdateG" runat="server" Text="UPDATE" CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" OnClick="btnUpdate_Click" Width="200px" style="background-color: #CC0808 ; color: white"/>
      <br />
        </div>
    </div>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
