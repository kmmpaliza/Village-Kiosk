<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="SearchHO.aspx.cs" Inherits="Village_Kiosk.View.SearchHO" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px">
 <h3 style="color: #CC0808; font-size:40px">SEARCH HOMEOWNER</h3>
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

      <asp:GridView ID="grdHomeOwner" runat="server" BackColor="White" 
          BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
       AllowPaging="True" PageSize="15"  DataKeyNames="HomeOwnerId" 
       onrowediting="gridHO_Editing" onrowdeleting="gridHO_Deleting" 
            AutoGenerateColumns="false"   Width="100%" 
              >

        <RowStyle HorizontalAlign="Center" Height = "40px" />

         <Columns>
           <asp:CommandField ShowEditButton="True" ButtonType="Button"/>
            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />

            <asp:TemplateField HeaderText="Homeowner Id">
            <ItemTemplate><asp:Label ID="lblid" runat="server" Text='<%# Eval("HomeOwnerId") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
            <ItemTemplate><asp:Label ID="lblname" runat="server" Text='<%# Eval("HomeOwnerName") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Tenant Name">
            <ItemTemplate><asp:Label ID="lbltenant" runat="server" Text='<%# Eval("TenantName") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="House Number">
            <ItemTemplate><asp:Label ID="lblhnum" runat="server" Text='<%# Eval("HomeOwnerHouseNumber") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Contact Number">
            <ItemTemplate><asp:Label ID="lblcnum" runat="server" Text='<%# Eval("HomeOwnerMobileNumber") %>'></asp:Label></ItemTemplate>
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
