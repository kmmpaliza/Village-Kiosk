<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="SentItems.aspx.cs" Inherits="Village_Kiosk.View.SentItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px">
 <h3 style="color: #CC0808; font-size:40px">SENT ITEMS</h3>
 <hr style="color: #CC0808; border-width: 5.5px; border-style:solid;"/>
 </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div style="background-color:rgba(255, 255, 255, 0.85);color:black;padding:20px;">

    <div align="center">

<asp:GridView ID="grdSent" runat="server" BackColor="White" 
        BorderColor="#CC0808" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        AllowPaging="True" PageSize="15" DataKeyNames="SentId" AutoGenerateColumns="false"  Width="100%"     
           >
           <RowStyle HorizontalAlign="Center" />

         <Columns>
            
        <asp:TemplateField HeaderText="Name">
        <ItemTemplate><asp:Label ID="lblname" runat="server" Text='<%# Eval("SentName") %>'></asp:Label></ItemTemplate></asp:TemplateField>
        <asp:TemplateField HeaderText="Contact Number">
        <ItemTemplate><asp:Label ID="lblnumber" runat="server" Text='<%# Eval("SentNumber") %>'></asp:Label></ItemTemplate></asp:TemplateField>
        <asp:TemplateField HeaderText="Message">
        <ItemTemplate><asp:Label ID="lblmsg" runat="server" Text='<%# Eval("SentMsg") %>'></asp:Label></ItemTemplate></asp:TemplateField>
        <asp:TemplateField HeaderText="Time">
        <ItemTemplate><asp:Label ID="lbltime" runat="server" Text='<%# Eval("SentTime") %>'></asp:Label></ItemTemplate></asp:TemplateField>
        
        
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#CC0808" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="Black" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

    </div>
    </div>
</asp:Content>
