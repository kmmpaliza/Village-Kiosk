<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="SentItems.aspx.cs" Inherits="Village_Kiosk.View.SentItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<br />
 <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-envelope"></i></font> SENT ITEMS</h3>
 <hr style="color: #FAFAD2; border-width: 5.5px; width: 850px; border-style:outset;"/>
    <div align="center">

<asp:GridView ID="grdSent" runat="server" BackColor="White" 
        BorderColor="#CC0808" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        AllowPaging="True" PageSize="15" DataKeyNames="SentId" AutoGenerateColumns="false"
        onpageindexchanging="grdSent_IndexChanging"  Width="73%" 
         style="background-color: white ; color: red; font-size: 15px; font-family: Trebuchet MS;"   
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
        <HeaderStyle BackColor="#DAA520" Font-Bold="True" ForeColor="White" />
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
