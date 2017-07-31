using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;
using System.Data;
using System.Data.SqlClient;
using Twilio;
using Twilio.Types;
using Twilio.Rest.Api.V2010.Account;

namespace Village_Kiosk.View
{
    public partial class MessageBoard : System.Web.UI.Page
    {
        VillageKioskClass homeOwner = new VillageKioskClass();
        Dictionary<string, string> people;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                grdMessageBoard.DataSource = homeOwner.selectHomeOwner().Tables["selectHomeOwner"];
                grdMessageBoard.DataBind();

                

            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }
        protected void grdMessageBoard_Add(object sender, GridViewCommandEventArgs e)
        {
           

          if (e.CommandName == "btnAdd")

            {
                string id = Convert.ToString(grdMessageBoard.DataKeys[Convert.ToInt32(e.CommandArgument)].Value);


                // string id = Convert.ToString(this.grdMessageBoard.DataKeys[e.NewEditIndex].Value);
                homeOwner.HomeownerId = id;
                String number = homeOwner.getHomeOwner(homeOwner.HomeownerId).Tables["getHomeOwner"].Rows[0][5].ToString() ;

                List<string> printNumber = new List<string>();
                 printNumber.Add(number);

                foreach (var num in printNumber)
                {
                    txtNumber.Text += num + ";";
                }

                
            }

           
        }

        protected void drpSelected(object sender, EventArgs e)
        {
            if (msgType.SelectedItem.Text == "Select Type of Message:")
            {
                string message = "Pls. select type of Message";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else if (msgType.SelectedItem.Text == "Emergency Notice")
            {
                string msg = "EMERGENCY!!";

                txtMessage.Text = msg;
            }

            else if (msgType.SelectedItem.Text == "Advisory")
            {
                string msg = "ADVISORY!!";

                txtMessage.Text = msg;
            }
            else if (msgType.SelectedItem.Text == "Billing Reminder")
            {
                string msg = "BILLING REMINDER!!";
                txtMessage.Text = msg;
            }
            else if (msgType.SelectedItem.Text == "Event/Activity")
            {
                string msg = "EVENT!!";

                txtMessage.Text = msg;
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if ((String.IsNullOrEmpty(txtNumber.Text)) || (String.IsNullOrEmpty(txtMessage.Text)) || (msgType.SelectedIndex == 0))
            {
                string alertmessage = "Please Fill up the form";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmessage + "');", true);
            }
            else
            {

                var accountSid = "AC0ab70b5a1d9076ba7be503d95525ecde";
                var authToken = "f81c8931b8fbfce211261f1d1c785a83";
                TwilioClient.Init(accountSid, authToken);

                string[] numberArray = txtNumber.Text.Split(new Char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);


                foreach (var number in numberArray)
                {
                    string numberFormat = String.Format("{0: +63##########}", long.Parse(number));


                    var message = MessageResource.Create(
                        to: new PhoneNumber(numberFormat),
                        from: new PhoneNumber("+1 650-603-5869"),
                        body: txtMessage.Text);

                    string name = homeOwner.searchHomePhone(number).Tables["searchHomePhone"].Rows[0][2].ToString();
                    homeOwner.saveSent(name, number, txtMessage.Text, DateTime.Now.ToString());

                }

                string alertmessage = "Message sent";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmessage + "');", true);
                txtNumber.Text = "";
                txtMessage.Text = "";
                msgType.SelectedIndex = 0;

            }
        }

        protected void grdMessageBoard_IndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdMessageBoard.PageIndex = e.NewPageIndex;
            grdMessageBoard.DataSource = homeOwner.selectHomeOwner().Tables["selectHomeOwner"];
            grdMessageBoard.DataBind();
        }
        
    }
}