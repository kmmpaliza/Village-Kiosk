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
    public partial class Visitor : System.Web.UI.Page
    {
        string name, person, reason, mobile, timein, timeout;
        VillageKioskClass visitor = new VillageKioskClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
           

                drpVisitorName.DataSource = visitor.getGuestinfo().Tables["guestVisitor"];
                drpVisitorName.DataTextField = "GuestName";
                drpVisitorName.DataBind();

                drpPSV.DataSource = visitor.getPersonToVisitInfo().Tables["guestHomeOwner"];
                drpPSV.DataTextField = "HomeOwnerName";
                drpPSV.DataBind();

                int index = drpPSV.SelectedIndex;
                txtMobile.Text = visitor.getPersonToVisitInfo().Tables["guestHomeOwner"].Rows[index][1].ToString();

                //name = drpVisitorName.SelectedItem.Text;
                
            }

        }

  
        protected void btnTimeIn_Click(object sender, EventArgs e)
        {
            if ((String.IsNullOrEmpty(txtPurpose.Text)) || (String.IsNullOrEmpty(txtMobile.Text)))
            {
                string alertmessage = "Please Fill Up The Form";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmessage + "');", true);
            }
            else
            {

                var accountSid = "AC0ab70b5a1d9076ba7be503d95525ecde";
                var authToken = "f81c8931b8fbfce211261f1d1c785a83";
                TwilioClient.Init(accountSid, authToken);

                name = drpVisitorName.SelectedItem.Text;
                person = drpPSV.SelectedItem.Text;
                reason = txtPurpose.Text;
                mobile = txtMobile.Text;
                timein = DateTime.Now.ToString("M/d/yyyy h:mm:ss tt");

                string numberFormat = String.Format("{0: +63##########}", long.Parse(mobile));

                string msg = "You have visitor: " + name + ".\nEntry date and time: " + DateTime.Now.ToString();

                var message = MessageResource.Create(
                    to: new PhoneNumber(numberFormat),
                    from: new PhoneNumber("+1 650-603-5869"),
                    body: msg);

                string homename = visitor.searchHomePhone(mobile).Tables["searchHomePhone"].Rows[0][2].ToString();
                visitor.saveSent(homename, mobile, msg, DateTime.Now.ToString());

                visitor.saveVisitor(name, person, reason, mobile, timein);
                Response.Redirect("TodaysVisitorList.aspx");
            }
        }

        protected void drpPSV_selected(object sender, EventArgs e)
        {
            
            int index = drpPSV.SelectedIndex;
             txtMobile.Text = visitor.getPersonToVisitInfo().Tables["guestHomeOwner"].Rows[index][1].ToString();
        }

        protected void drpPurpose_Selected(object sender, EventArgs e)
        {
            if (drpPurpose.SelectedItem.Text == "Select Purpose:")
            {
                string message = "Pls. select purpose";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else if (drpPurpose.SelectedItem.Text == "Regular Visit")
            {
                txtPurpose.Text = "Regular Visit";
                txtPurpose.Enabled = false;
            }
            else if (drpPurpose.SelectedItem.Text == "Celebration")
            {
                txtPurpose.Text = "Celebration";
                txtPurpose.Enabled = false;
            }
            else if (drpPurpose.SelectedItem.Text == "Subdivision Event")
            {
                txtPurpose.Text = "Subdivision Event";
                txtPurpose.Enabled = false;
            }
            else if (drpPurpose.SelectedItem.Text == "Others")
            {
                txtPurpose.Enabled = true;
                txtPurpose.Text = "";
            }
        }

        

    }
}