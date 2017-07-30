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
    public partial class MessageAll : System.Web.UI.Page
    {
        VillageKioskClass homeOwner = new VillageKioskClass();

        protected void Page_Load(object sender, EventArgs e)
        {

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

                Dictionary<string, string> people;
                people = new Dictionary<string, string>();

                var accountSid = "AC0ab70b5a1d9076ba7be503d95525ecde";
                // Your Auth Token from twilio.com/console
                var authToken = "f81c8931b8fbfce211261f1d1c785a83";

                TwilioClient.Init(accountSid, authToken);


                foreach (DataRow row in homeOwner.selectHomeOwner().Tables["selectHomeOwner"].Rows)
                {
                    people.Add(row["HomeOwnerMobileNumber"].ToString(), row["HomeOwnerName"].ToString());
                }


                foreach (var person in people)
                {

                    string number = person.Key;
                    string formatnumber = String.Format("{0: +63##########}", long.Parse(number));


                    var message = MessageResource.Create(
                        to: new PhoneNumber(formatnumber),
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
                btnSend.Enabled = false;
            }
        }

        protected void drpMsgSelected(object sender, EventArgs e)
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

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            List<string> printNumber = new List<string>();
            List<string> printName = new List<string>();

            Dictionary<string, string> peoplelist;
            peoplelist = new Dictionary<string, string>();

            foreach (DataRow row in homeOwner.selectHomeOwner().Tables["selectHomeOwner"].Rows)
            {
                peoplelist.Add(row["HomeOwnerName"].ToString(), row["HomeOwnerMobileNumber"].ToString());
            }


            foreach (var details in peoplelist)
            {
                    txtNumber.Text += details.Key + "(" + details.Value + ")\n";
                
            }

            btnSend.Enabled = true;
            
        }
    }
}