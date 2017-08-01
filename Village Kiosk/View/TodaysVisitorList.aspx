<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="TodaysVisitorList.aspx.cs" Inherits="Village_Kiosk.View.TodaysVisitorList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<br />
    
 <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-male"></i></font> TODAY'S VISITOR/S</h3>
 
 <hr style="color: #FAFAD2; border-width: 5.5px; width: 850px; border-style:outset;"/>
 <br />

      <asp:GridView ID="grdVisitor" runat="server" BackColor="White" 
        BorderColor="#000" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        AllowPaging="True" PageSize="15" width="73%" DataKeyNames="VisitorId"
        AutoGenerateColumns="false" onrowediting="grdVisitor_Editing" 
          onrowcreated="grdVisitor_Created" onrowdatabound="grdVisitor_Databound"  style="background-color: white ; color: red; font-size: 15px; font-family: Trebuchet MS;"  
       >
       <RowStyle HorizontalAlign="Center" />
       
        <Columns>
            <asp:CommandField ShowEditButton="True" ButtonType="Button" EditText= "Time Out"/>
            <asp:TemplateField HeaderText="Visitor Id">
            <ItemTemplate><asp:Label ID="lblid" runat="server" Text='<%# Eval("VisitorId") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
            <ItemTemplate><asp:Label ID="lblname" runat="server" Text='<%# Eval("VisitorName") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Person To Visit">
            <ItemTemplate><asp:Label ID="lblperson" runat="server" Text='<%# Eval("PersonToVisit") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Reason Of Visit">
            <ItemTemplate><asp:Label ID="lblreason" runat="server" Text='<%# Eval("ReasonOfVisit") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="HomeOwner Mobile">
            <ItemTemplate><asp:Label ID="lblmobile" runat="server" Text='<%# Eval("HOMobile") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Entry Time">
            <ItemTemplate><asp:Label ID="lbltimein" runat="server" Text='<%# Eval("VisitorTimeIn") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Exit Time">
            <ItemTemplate><asp:Label ID="lbltimeout" runat="server" Text='<%# Eval("VisitorTimeOut") %>'></asp:Label></ItemTemplate>
            </asp:TemplateField>
			
            
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

</asp:Content>
