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
using System.Web.Services;

namespace Village_Kiosk.View
{
    public partial class Guest : System.Web.UI.Page
    {
        string guestname, guestcontact, alertmsg;
        VillageKioskClass guest = new VillageKioskClass();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                if (Request.InputStream.Length > 0)
                {
                    using (StreamReader reader = new StreamReader(Request.InputStream))
                    {
                        string hexString = Server.UrlEncode(reader.ReadToEnd());
                        string imageName = DateTime.Now.ToString("dd-MM-yy hh-mm-ss");
                        string imagePath = string.Format("~/Captures/{0}.png", imageName);
                        File.WriteAllBytes(Server.MapPath(imagePath), ConvertHexToBytes(hexString));
                        Session["CapturedImage"] = ResolveUrl(imagePath);
                    }
                }
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string imageName = DateTime.Now.ToString("dd-MM-yy hh-mm-ss");
            string imagePath = string.Format("~/Captures/{0}.png", imageName);

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

                guestname = txtGuestName.Text;
                guestcontact = txtGuestMobile.Text;

                guest.saveGuest(guestname, guestcontact, txtHouseNo.Text, txtBarangay.Text, drpMun.SelectedItem.Text, imagePath);

                string activitylog = "Add guest";
                guest.saveLog(guestname, DateTime.Now.ToShortDateString(), DateTime.Now.ToShortTimeString(), activitylog);

                txtGuestName.Text = String.Empty;
                txtGuestMobile.Text = String.Empty;
                txtBarangay.Text = String.Empty;
                txtHouseNo.Text = String.Empty;
                drpMun.SelectedIndex = 0;
            }
        }

        private static byte[] ConvertHexToBytes(string hex)
        {
            byte[] bytes = new byte[hex.Length / 2];
            for (int i = 0; i < hex.Length; i += 2)
            {
                bytes[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);
            }
            return bytes;
        }

        [WebMethod(EnableSession = true)]
        public static string GetCapturedImage()
        {
            string url = HttpContext.Current.Session["CapturedImage"].ToString();
            HttpContext.Current.Session["CapturedImage"] = null;
            return url;
        }
    }
}