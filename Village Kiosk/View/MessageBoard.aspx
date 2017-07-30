<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="MessageBoard.aspx.cs" Inherits="Village_Kiosk.View.MessageBoard" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px">
 <h3 style="color: #CC0808; font-size:40px">MESSAGE BOARD</h3>
 <hr style="color: #CC0808; border-width: 5.5px; border-style:solid;"/>
 </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div style="background-color:rgba(255, 255, 255, 0.85);color:black;padding:20px;">

    <div align="center">
<pre>

<asp:Label runat="server">Send to:</asp:Label>
<asp:TextBox ID="txtNumber" runat="server" 
              CssClass="w3-input w3-border w3-margin-bottom" Width="50%" Placeholder="Mobile Number" style="text-align: center"></asp:TextBox><asp:Button ID="btnplus" runat="server" Text="+"
               CssClass=" w3-button w3-block w3-hover-white w3-round-xlarge" style="background-color: #CC0808 ; color: white" Width="50px"  />
               
<asp:DropDownList ID="msgType" runat="server" Width="350px" Height="30px"  AutoPostBack="true"
            onselectedindexchanged="drpSelected">
            <asp:ListItem Enabled="true" Text="Select Type of Message:" Value="0">
            </asp:ListItem><asp:ListItem Text="Emergency Notice" Value="1">
            </asp:ListItem><asp:ListItem Text="Advisory" Value="2">
            </asp:ListItem><asp:ListItem Text="Billing Reminder" Value="3">
            </asp:ListItem><asp:ListItem Text="Event/Activity" Value="4"></asp:ListItem></asp:DropDownList>

<asp:TextBox ID="txtMessage" runat="server" Width="453px" Height="231px"
            TextMode="MultiLine" placeholder="Enter message here..."></asp:TextBox>
                        
<asp:Button ID="btnSend" runat="server" Text="SEND" CssClass=" w3-button w3-block w3-hover-white w3-round-xlarge" style="background-color: #CC0808 ; color: white" Width="300px" OnClick="btnSend_Click" />

<center>
               <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
               </asp:ToolkitScriptManager>
               <asp:Panel ID="Panel1" runat="server" CssClass="modalBackground">

               <asp:GridView ID="grdMessageBoard" runat="server" BackColor="White" 
        BorderColor="#CC0808" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        AllowPaging="True" PageSize="15" DataKeyNames="HomeOwnerId" AutoGenerateColumns="false"  Width="100%"     
            onrowcommand="grdMessageBoard_Add" 
           >
           <RowStyle HorizontalAlign="Center" />

         <Columns>
            
        <asp:ButtonField CommandName="btnAdd" Text="Add" ButtonType="Button" />
         <asp:TemplateField HeaderText="Name">
        <ItemTemplate><asp:Label ID="lblname" runat="server" Text='<%# Eval("HomeOwnerName") %>'></asp:Label></ItemTemplate></asp:TemplateField>
        <asp:TemplateField HeaderText="Contact Number">
            <ItemTemplate><asp:Label ID="lblnumber" runat="server" Text='<%# Eval("HomeOwnerMobileNumber") %>'></asp:Label></ItemTemplate></asp:TemplateField></Columns><FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#CC0808" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="Black" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass=" w3-button w3-block w3-hover-white w3-round-xlarge" style="background-color: #CC0808 ; color: white" Width="300px"  />

               </asp:Panel>
               <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
                       PopupControlID="Panel1" CancelControlID="btnCancel" 
                       TargetControlID="btnplus" BackgroundCssClass="modalBackground">
               </asp:ModalPopupExtender>
               </center>

</pre>       
    </div>
</div>

</asp:Content>
