<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="TodaysVisitorList.aspx.cs" Inherits="Village_Kiosk.View.TodaysVisitorList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<br />
    
 <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-male"></i></font><font size="10px"> TODAY'S VISITOR/S</h3></font>
 
 <hr style="color: #FAFAD2; border-width: 5.5px; width: 850px; border-style:outset;"/>
 <br />

     <asp:DropDownList ID="drpChoose" AppendDataBoundItems="true" 
              runat="server" CssClass="w3-input w3-border w3-margin-bottom" 
            style="text-align:center; border-color:#000080" Width="600px" 
            AutoPostBack="True" onselectedindexchanged="drpChoose_Changed" >
          <asp:ListItem Text="Today's Visitor/s" Value="1" />
          <asp:ListItem Text="Visitor/s" Value="2" />
          </asp:DropDownList>

      <asp:GridView ID="grdVisitor" runat="server" BackColor="White" 
        BorderColor="#000" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        AllowPaging="True" PageSize="15" width="73%" DataKeyNames="VisitorId"
        AutoGenerateColumns="false" onrowediting="grdVisitor_Editing" 
         onpageindexchanging="grdVisitor_IndexChanging" 
          style="background-color: white ; color: red; font-size: 15px; font-family: Trebuchet MS;" >
     
       
       <RowStyle HorizontalAlign="Center" Height = "50px" Width="50px" />

        <Columns>
            <asp:CommandField ShowEditButton="True" ButtonType="Button" EditText= "Log Out"/>
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

    </div>
</asp:Content>
