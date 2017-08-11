<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="MessageAll.aspx.cs" Inherits="Village_Kiosk.View.MessageAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<br />
 <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-envelope"></i></font><font size="10px"> MESSAGE ALL</h3></font>
 <hr style="color: #FAFAD2; border-width: 5.5px; width: 700px; border-style:outset;"/>
    

    <div align="center">
    <pre style ="width:650px">

<asp:Button ID="btnSelect" runat="server" Text="SELECT ALL" CssClass=" w3-button w3-block w3-hover-khaki w3-round-xlarge" style="background-color: #CC0808 ; color: white ;font-size: 15px; font-family: Trebuchet MS; font-weight: bold" Width="300px" OnClick="btnSelect_Click" />
<asp:Label ID="Label1" runat="server">Send to:</asp:Label>
<asp:TextBox ID="txtNumber" runat="server" TextMode="MultiLine"
              CssClass="w3-input w3-border w3-margin-bottom" Enabled="false" Width="50%" Placeholder="Mobile Number" style="text-align: center"></asp:TextBox>
<asp:DropDownList ID="msgType" runat="server" Width="350px" Height="30px"  AutoPostBack="true"
onselectedindexchanged="drpMsgSelected"
     >
            <asp:ListItem Enabled="true" Text="Select Type of Message:" Value="0">
            </asp:ListItem><asp:ListItem Text="Emergency Notice" Value="1">
            </asp:ListItem><asp:ListItem Text="Advisory" Value="2">
            </asp:ListItem><asp:ListItem Text="Billing Reminder" Value="3">
            </asp:ListItem><asp:ListItem Text="Event/Activity" Value="4"></asp:ListItem></asp:DropDownList>

<asp:TextBox ID="txtMessage" runat="server" Width="453px" Height="231px"
            TextMode="MultiLine" placeholder="Enter message here..." ></asp:TextBox>
                        
<asp:Button ID="btnSend" Enabled="false" runat="server" Text="SEND" CssClass=" w3-button w3-block w3-hover-white w3-round-xlarge" style="background-color: #CC0808 ; color: white ;font-size: 15px; font-family: Trebuchet MS; font-weight: bold" Width="300px" OnClick="btnSend_Click" />

</div>
</div>
</asp:Content>
