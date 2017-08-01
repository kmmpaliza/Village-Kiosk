using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using VillageClass;
using System.IO;
using System.Web.Services;

namespace Village_Kiosk.View
{
    public partial class EditGuest : System.Web.UI.Page
    {
        string guestname, guestcontact, muni;
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

           if (Request.QueryString["id"] != null && IsPostBack == false)
            {
                string id = Request.QueryString["id"];
                guest.GuestId = id;

                guestForId.Text = id;
                txtGuestName.Text = guest.getGuest(guest.GuestId).Tables["getGuest"].Rows[0][2].ToString();
                txtGuestMobile.Text = guest.getGuest(guest.GuestId).Tables["getGuest"].Rows[0][3].ToString();
                txtHouseNo.Text = guest.getGuest(guest.GuestId).Tables["getGuest"].Rows[0][4].ToString();
                txtBarangay.Text = guest.getGuest(guest.GuestId).Tables["getGuest"].Rows[0][5].ToString();
                drpMun.SelectedItem.Text = guest.getGuest(guest.GuestId).Tables["getGuest"].Rows[0][6].ToString();
               

                btnUpdateG.Enabled = true;
            }  
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string imageName = DateTime.Now.ToString("dd-MM-yy hh-mm-ss");
            string imagePath = string.Format("~/Captures/{0}.png", imageName);

         
                    string msg = "Data Updated";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);

                    string gid = guestForId.Text;
                    guestname = txtGuestName.Text;

                    string savepsv = drpMun.SelectedValue;
                    if (drpMun.SelectedItem.Equals(savepsv))
                    {
                        muni = drpMun.SelectedValue;
                    }
                    else
                    {
                        muni = drpMun.SelectedItem.Text;
                    }
                    guestcontact = txtGuestMobile.Text;

                    guest.updateGuest(gid, guestname, guestcontact, txtHouseNo.Text, txtBarangay.Text, muni, imagePath);

                    Response.Redirect("SearchGuest.aspx");

                
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