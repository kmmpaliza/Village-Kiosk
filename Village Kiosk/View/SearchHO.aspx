<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="SearchHO.aspx.cs" Inherits="Village_Kiosk.View.SearchHO" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<br />
   <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-search"></i></font> SEARCH</h3>

 <hr style="color: #FAFAD2; border-width: 5.5px; width: 850px; border-style:outset;"/>
 <br />
 <br />
 <br />
 <div style="background-color:rgb(146,0,0); color:black;padding-left:155px">
    <asp:TextBox ID="txtSearch" CssClass="searchBar" runat="server" 
           placeholder="SEARCH" Width="189px" ></asp:TextBox></div>
    
    <asp:Button ID="btnSearch" CssClass="w3-button  w3-hover-khaki w3-round-xlarge w3-section " style="background-color: #CC0808 ; color: white; font-size: 15px; font-family: Trebuchet MS; font-weight: bold" runat="server" Text="SEARCH" 
            onclick="btnSearch_Click" Width="150px" />
    <td><asp:Button ID="btnReset" CssClass="w3-button  w3-hover-khaki w3-round-xlarge " style="background-color: #CC0808 ; color: white; font-size: 15px; font-family: Trebuchet MS; font-weight: bold" runat="server" Text="RESET" 
            onclick="btnReset_Click" Width="126px" /></td>
    </tr>
    <br />

      <asp:GridView ID="grdHomeOwner" runat="server" BackColor="White" 
          BorderColor="#000" BorderStyle="None" BorderWidth="1px" 
       AllowPaging="True" PageSize="15"  DataKeyNames="HomeOwnerId" 
            AutoGenerateColumns="false"   Width="73%" onpageindexchanging="gridHO_IndexChanging"
             
           style="background-color: white ; color: red; font-size: 15px; font-family: Trebuchet MS;" onrowcommand="gridHO_RowCommand"
              >

        <RowStyle HorizontalAlign="Center" Height = "40px" />

         <Columns>
           
            <asp:TemplateField> <ItemTemplate> <asp:ImageButton runat="server" OnClick="btnEdit_Click" ID="btnEditImage" CommandName="EditValue" ImageUrl="~/Images/btnEdit.png" Width="20px" Height="20px"  /> </ItemTemplate></asp:TemplateField>
            <asp:TemplateField> <ItemTemplate> <asp:ImageButton runat="server" OnClick="btnDelete_Click" ID="btnDelImage" ImageUrl="~/Images/btnTrash.png" Width="20px" Height="20px" /> </ItemTemplate></asp:TemplateField>

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
        <HeaderStyle BackColor="#DAA520" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="Black" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
     </asp:GridView>


     <input id="editClick" type="hidden" name="hddclick" runat="server" />
    <asp:ScriptManager ID = "ScriptManager1" runat="server"> </asp:ScriptManager>
             
             <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
                       PopupControlID="Panel1" CancelControlID="btnCancel" 
                       TargetControlID="editClick" BackgroundCssClass="modalBackground" Drag="true">
             </asp:ModalPopupExtender>


            <asp:Panel ID="Panel1" runat="server" CssClass="modalBackground" Style="display: none">

    <div style="background-color:rgba(255, 255, 255, 0.85); color:black;padding:20px">
    <asp:Label ID="lblforId" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lbl1" runat ="server"> USERNAME: </asp:Label><br />
    <asp:TextBox ID="txtUsername" runat="server" placeholder="Type your username"></asp:TextBox><br />
    <asp:Label ID="lbl2" runat ="server"> PASSWORD: </asp:Label><br />
    <asp:TextBox ID="txtPassword" runat="server" placeholder="Type your password" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSub" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass=" w3-button w3-block w3-hover-white w3-round-xlarge" style="background-color: #CC0808 ; color: white" Width="300px"  />
    <br />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass=" w3-button w3-block w3-hover-white w3-round-xlarge" style="background-color: #CC0808 ; color: white" Width="300px"  />
    <br />
    </div>
    </asp:Panel>

    </div>

<br />
<br />
<br />
<br />
<br />
<br />

</asp:Content>
