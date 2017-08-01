<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Village_Kiosk.View.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 
 <br />
 <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-user"></i></font> NEW ADMIN</h3>
 <hr style="color: #FAFAD2; border-width: 5.5px; width: 770px; border-style:outset;"/>
    
    <div align="center">
          <asp:Label id="adminForId" runat="server" Visible="False"></asp:Label>
         <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtname"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Full Name</b></label>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" display = "Dynamic" ErrorMessage="Invalid"  ForeColor = "Red" ControlToValidate="txtname" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
          
          <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtname" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{0,40}$" runat="server" ForeColor = "Red" ErrorMessage="Maximum of 40 Characters Only"></asp:RegularExpressionValidator>
          <asp:TextBox ID="txtname" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "First Name, Middle Name, Last Name" ></asp:TextBox>
          <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtusername"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Username</b></label>
          <asp:TextBox ID="txtusername" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Last Name & Number"></asp:TextBox>

          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Designation</b></label><br />
          <asp:DropDownList ID="drpDesignation" AppendDataBoundItems="true" 
              runat="server" CssClass="w3-input w3-border w3-margin-bottom" 
            style="text-align:center; border-color:#000080" Width="600px" 
            AutoPostBack="True" >
          <asp:ListItem Text="--Select your designation--" Value="0" />
          <asp:ListItem Text="Security Admin" Value="1" />
          <asp:ListItem Text="Office Admin" Value="2" />
          </asp:DropDownList>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Secret Question</b></label><br />
          <asp:DropDownList ID="drpQuestion" AppendDataBoundItems="true" runat="server" CssClass="w3-input w3-border w3-margin-bottom" 
            style="text-align:center; border-color:#000080" Width="600px" 
            AutoPostBack="True" onselectedindexchanged="drpQuestion_Selected" >
           <asp:ListItem Text="--Select your question--" Value="0" />
          <asp:ListItem Text="What was your childhood nickname?" Value="1" />
          <asp:ListItem Text="In what city or town did your mother and father meet?" Value="2" />
          <asp:ListItem Text="What is the middle name of your oldest child?" Value="3" />
          <asp:ListItem Text="What is your favorite team?" Value="4" />
          <asp:ListItem Text="In what town was your first job?" Value="5" />
          <asp:ListItem Text="What was the name of the company where you had your first job?" Value="6" />
          </asp:DropDownList>
          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Answer</b></label>
          <asp:TextBox ID="txtAnswer" Enabled="false" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Please Enter Your Answer"></asp:TextBox>

          <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"><b>Password</b></label>
          <asp:TextBox ID="txtPassword" runat="server" type="password" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Default Password (12345678)"></asp:TextBox>
         
          <asp:Button ID="btnAdmin" runat="server" Text="ADD" CssClass="w3-button w3-block w3-hover-khaki w3-round-xlarge w3-section w3-padding" OnClick="btnAdd_Click" Width="200px" style="background-color: white ; color: red;font-size: 15px; font-family: Trebuchet MS;" />

  </div>   

</div>
</asp:Content>
