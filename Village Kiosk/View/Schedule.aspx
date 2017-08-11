<%@ Page Title="" Language="C#" MasterPageFile="~/Master/VillageMaster.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="Village_Kiosk.View.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

   <div align="center">
   <asp:Image ID="ImageButton1" runat="server" ImageUrl="~/Images/lblS.png" />
 <br />
 <div runat="server" id="signup" Visible="false">
 <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtEvent"
             ValidationGroup="Group1"
             Display = "Dynamic"
             ForeColor = "Red">

            </asp:RequiredFieldValidator>
 <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold">Event</label><br />
 <asp:TextBox ID="txtEvent" runat="server"></asp:TextBox><br />
  
  
  <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtDate"
             ValidationGroup="Group1"
             Display = "Dynamic"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
 <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold">Date</label><br />
 <asp:TextBox ID="txtDate" runat="server" type="Date" ></asp:TextBox><br />
 
 
  <asp:RequiredFieldValidator 
             id="RequiredFieldValidator3" runat="server" 
             ErrorMessage="*" 
             ControlToValidate="txtEventDescription"
             ValidationGroup="Group1"
             Display = "Dynamic"
             ForeColor = "Red">
            </asp:RequiredFieldValidator>
 <label style="color: #ffffff; font-size: 20px; font-family: Trebuchet MS; font-weight:bold" >Details</label><br />
 <asp:TextBox ID="txtEventDescription" runat="server" Width= "300px" Height="120px" TextMode="MultiLine"></asp:TextBox><br />
 <br />
 <table>
 <tr>
 <td>
 
 <asp:Button ID="cmdCreate" runat="server" Text="Add Event" 
        onclick="cmdCreate_Click" CssClass=" w3-button w3-block w3-hover-khaki w3-round-xlarge" ValidationGroup="Group1" style="background-color: #CC0808 ; color: white;font-size: 15px; font-family: Trebuchet MS;" Width="140px" />
  </td>
  <td>
  &nbsp&nbsp
  </td>
  <td>
  
<asp:Button ID="Button2" runat="server" Text="Done" 
        onclick="done" CssClass=" w3-button w3-block w3-hover-khaki w3-round-xlarge"  style="background-color: #CC0808 ; color: white;font-size: 15px; font-family: Trebuchet MS;" Width="140px" />
     </td> 
     </tr>
      </table>
      
 </div>

 
      <asp:ImageButton ID="Button1" runat="server" ImageUrl="~/Images/btnCreateEvent.png"   OnClick="createEvent" CssClass="w3-button  w3-hover-black w3-round-xlarge w3-section w3-padding box-shadow" style="background-color: #920000 ; color: White; font-size: 30px; font-family: Trebuchet MS; font-weight:bold"/>
      <br />

 


  

 
      
      
       <asp:Calendar ID="Calendar1" runat="server" ondayrender="Calendar1_DayRender" 
           Height="400px" Width="700px" 
           style="background-color: #ffffff ; color: #920000; font-size: 20px; font-family: Trebuchet MS; font-weight:bold" 
           BackColor="#DAA520" BorderColor="#999999" CellPadding="4" 
           DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="13pt" ForeColor="Black">
           <DayHeaderStyle BackColor="#DAA520" ForeColor="White" Font-Bold="True" Font-Size="10pt" />
           <NextPrevStyle VerticalAlign="Bottom" />
           <OtherMonthDayStyle ForeColor="#808080" />
           <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
           <SelectorStyle BackColor="#CCCCCC" />
           <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
           <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
           <WeekendDayStyle BackColor="#FFFFCC" />
       </asp:Calendar>
       <br />




        </div>
        


      
</asp:Content>
