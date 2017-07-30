<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="MessageAll.aspx.cs" Inherits="Village_Kiosk.View.MessageAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color:rgba(255, 255, 255, 0.85);color:black;padding:20px;">

    <div align="center">
    <pre>

<asp:Button ID="btnSelect" runat="server" Text="SELECT ALL" CssClass=" w3-button w3-block w3-hover-white w3-round-xlarge" style="background-color: #CC0808 ; color: white" Width="300px" OnClick="btnSelect_Click" />

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
                        
<asp:Button ID="btnSend" Enabled="false" runat="server" Text="SEND" CssClass=" w3-button w3-block w3-hover-white w3-round-xlarge" style="background-color: #CC0808 ; color: white" Width="300px" OnClick="btnSend_Click" />















</pre>
</div>
</div>
</asp:Content>
