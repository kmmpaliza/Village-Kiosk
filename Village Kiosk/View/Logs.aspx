<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="Logs.aspx.cs" Inherits="Village_Kiosk.View.Logs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <br />
<br />
<br />
<br />
<br />
<br />
<div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px">
 <h3 style="color: #CC0808; font-size:40px">LOGS</h3>
 <hr style="color: #CC0808; border-width: 5.5px; border-style:solid;"/>
 </div>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div style="background-color:rgba(255, 255, 255, 0.85);color:black;padding:20px;">

    <div align="center">
    <asp:TextBox ID="txtSearch" CssClass="searchBar" runat="server" placeholder="SEARCH"></asp:TextBox>

    <tr>
    <asp:Button ID="btnSearch" CssClass="w3-button  w3-hover-white w3-round-xlarge w3-section " style="background-color: #CC0808 ; color: white" runat="server" Text="SEARCH" 
            onclick="btnSearch_Click" Width="150px" />
    <td><asp:Button ID="btnReset" CssClass="w3-button  w3-hover-white w3-round-xlarge " style="background-color: #CC0808 ; color: white" runat="server" Text="RESET" 
            onclick="btnReset_Click" Width="126px" /></td> 
    </tr>
    <br />

      <asp:GridView ID="grdLogs" runat="server" BackColor="White" 
          BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
       AllowPaging="True" PageSize="15"  DataKeyNames="LogId" 
            AutoGenerateColumns="false"   Width="100%" 
              >

        <HeaderStyle HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" Height = "40px" />

         <Columns>
            <asp:TemplateField HeaderText="Log Id">
            <ItemTemplate><asp:Label ID="lblid" runat="server" Text='<%# Eval("LogId") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
            <ItemTemplate><asp:Label ID="lblname" runat="server" Text='<%# Eval("LogName") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Date">
            <ItemTemplate><asp:Label ID="lbldate" runat="server" Text='<%# Eval("LogDate") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Time">
            <ItemTemplate><asp:Label ID="lbltime" runat="server" Text='<%# Eval("LogTime") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Activity">
            <ItemTemplate><asp:Label ID="lblid" runat="server" Text='<%# Eval("LogActivity") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
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

<br />
<br />
<br />
<br />
<br />
<br />


</asp:Content>
