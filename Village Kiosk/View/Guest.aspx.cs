using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Village_Kiosk.View
{
    public partial class Guest : System.Web.UI.Page
    {
        string  guestname, guestcontact, alertmsg;
        VillageKioskClass guest = new VillageKioskClass();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */

        }

        protected void drpSelected(object sender, EventArgs e)
        {
            
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (fPhoto.HasFile)
            {

               
                string filename = fPhoto.FileName;
                string path = "~/Uploads/" + filename.ToString();

                if (guest.checkGuest(txtGuestName.Text, txtGuestMobile.Text, txtHouseNo.Text))
                {

                    alertmsg = "Details exist already";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmsg + "');", true);
                }

                else if ((String.IsNullOrEmpty(txtGuestName.Text)) || (String.IsNullOrEmpty(txtGuestMobile.Text)) ||
                    (drpMun.SelectedIndex == 0) || (String.IsNullOrEmpty(txtHouseNo.Text)) || (String.IsNullOrEmpty(txtBarangay.Text)))
                {
                    string message = "Please Fill Up The Form";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);


                }
                else
                {

                    string message2 = "Data Added Successfully";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message2 + "');", true);

                    fPhoto.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + filename);

                    guestname = txtGuestName.Text;
                    guestcontact = txtGuestMobile.Text;

                    guest.saveGuest(guestname, guestcontact, txtHouseNo.Text, txtBarangay.Text, drpMun.SelectedItem.Text, path);

                    string activitylog = "Add guest";
                    guest.saveLog(guestname, DateTime.Now.ToShortDateString(), DateTime.Now.ToShortTimeString(), activitylog);

                    txtGuestName.Text = String.Empty;
                    txtGuestMobile.Text = String.Empty;
                    txtBarangay.Text = String.Empty;
                    txtHouseNo.Text = String.Empty;
                    drpMun.SelectedIndex = 0;
                    
                }
            }
            else
            {
                alertmsg = "Please Upload Your Photo";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmsg + "');", true);
            }
        }

   
    }
}