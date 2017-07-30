<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Village_Kiosk.View.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color:rgba(255, 255, 255, 0.85);color:black;padding:20px;">
    <div align="center">
          <asp:Label id="adminForId" runat="server" Visible="False"></asp:Label>
         
          <label><b>Full Name</b></label>
          <asp:TextBox ID="txtname" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "  (First Name, Middle Name, Last Name)" ></asp:TextBox>
          
          <label><b>Username</b></label>
          <asp:TextBox ID="txtusername" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Please Enter Your User Name"></asp:TextBox>

          <label><b>Designation</b></label><br />
          <asp:DropDownList ID="drpDesignation" AppendDataBoundItems="true" 
              runat="server" CssClass="w3-input w3-border w3-margin-bottom" 
            style="text-align:center; border-color:#000080" Width="600px" 
            AutoPostBack="True" >
          <asp:ListItem Text="--Select your designation--" Value="0" />
          <asp:ListItem Text="Security Admin" Value="1" />
          <asp:ListItem Text="Office Admin" Value="2" />
          </asp:DropDownList>
          <br />
          <label><b>Secret Question</b></label><br />
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
          <br />
          <label><b>Answer</b></label>
          <asp:TextBox ID="txtAnswer" Enabled="false" runat="server" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Please Enter Your Answer"></asp:TextBox>

          <label><b>Password</b></label>
          <asp:TextBox ID="txtPassword" runat="server" type="password" CssClass="w3-input w3-border w3-margin-bottom" style="text-align:center; border-color:#000080" Width="600px" placeholder = "Default Password (12345678)"></asp:TextBox>
         
          <asp:Button ID="btnAdmin" runat="server" Text="ADD" CssClass="w3-button w3-block w3-hover-white w3-round-xlarge w3-section w3-padding" OnClick="btnAdd_Click" Width="200px" style="background-color: #CC0808 ; color: white" />

  </div>   

</div>
</asp:Content>
