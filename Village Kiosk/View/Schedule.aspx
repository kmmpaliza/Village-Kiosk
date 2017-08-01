<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="OptionsGuest.aspx.cs" Inherits="Village_Kiosk.View.OptionsGuest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

  <br />
  
   <div align="center">
 <h3 style="color: #ffffff; font-size:65px"><font color= "#D4AF37"><i class="fa fa-clock-o"></i></font> SCHEDULE</h3>

      

 <hr style="color: #FAFAD2; border-width: 5.5px; width: 695px; border-style:outset;"/>
 <br />
  <asp:Calendar ID="Calendar1" runat="server" Height="400" Width="480" style="background-color: #ffffff ; color: #920000; font-size: 20px; font-family: Trebuchet MS; font-weight:bold"/></asp:Calendar>
    </div> 
</asp:Content>
