<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="SearchGuest.aspx.cs" Inherits="Village_Kiosk.View.SearchGuest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 <br />
<br />
<br />
<br />
<br />
<br />
<div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px">
 <h3 style="color: #CC0808; font-size:40px">SEARCH GUEST</h3>
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
    <td><asp:Button ID="btnReset" CssClass="w3-button  w3-hover-white w3-round-xlarge " 
            style="background-color: #CC0808; color: white; height: 38px;" runat="server" Text="RESET" 
            onclick="btnReset_Click" Width="126px" /></td> 
    </tr>
    <br />

    <asp:GridView ID="grdSearch" runat="server" BackColor="White" 
        BorderColor="#CC0808" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        AllowPaging="True" PageSize="15" width="100%" AutoGenerateColumns="false" 
            onrowdeleting="gridGuest_Deleting" onrowediting="gridGuest_Editing" DataKeyNames="GuestId" 
       >
       
     <RowStyle HorizontalAlign="Center" Height = "40px" />
    <Columns>
            <asp:CommandField ShowEditButton="True" ButtonType="Button"/>
            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />

            <asp:TemplateField HeaderText="Guest Id">
            <ItemTemplate><asp:Label ID="lblid" runat="server" Text='<%# Eval("GuestId") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
            <ItemTemplate><asp:Label ID="lblname" runat="server" Text='<%# Eval("GuestName") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Person To Visit">
            <ItemTemplate><asp:Label ID="lblptv" runat="server" Text='<%# Eval("PersonToVisit") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact Number">
            <ItemTemplate><asp:Label ID="lblcontact" runat="server" Text='<%# Eval("GuestMobile") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Photo" ItemStyle-Height="50px">
            <ItemTemplate><asp:Image ID="img" runat="server" ImageUrl='<%# Eval("GuestPhoto") %>' Height="30px" Width="30px" /></ItemTemplate>
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
