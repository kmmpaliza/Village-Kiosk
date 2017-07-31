using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using VillageClass;
using System.IO;

namespace Village_Kiosk.View
{
    public partial class EditGuest : System.Web.UI.Page
    {
        string guestname, muni, guestcontact, alertmsg, address;
        VillageKioskClass guest = new VillageKioskClass();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

             if (Request.QueryString["id"] != null && IsPostBack == false)
            {
                string id = Request.QueryString["id"];
                guest.GuestId = id;

                guestForId.Text = id;
                txtGuestName.Text = guest.getGuest(guest.GuestId).Tables["getGuest"].Rows[0][2].ToString();
                txtGuestMobile.Text = guest.getGuest(guest.GuestId).Tables["getGuest"].Rows[0][3].ToString();
                txtHouseNo.Text = guest.getGuest(guest.GuestId).Tables["getGuest"].Rows[0][4].ToString();
                txtBarangay.Text = guest.getGuest(guest.GuestId).Tables["getGuest"].Rows[0][5].ToString();
                drpMun.SelectedValue = guest.getGuest(guest.GuestId).Tables["getGuest"].Rows[0][6].ToString();
                fPhoto.Attributes["File Name"] = guest.getGuest(guest.GuestId).Tables["getGuest"].Rows[0][7].ToString();

                btnUpdateG.Enabled = true;
            }  
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string filename = fPhoto.FileName;
            string path = "~/Uploads/" + filename.ToString();
            if (fPhoto.HasFile)
            {

                if (File.Exists(path))
                {
                    alertmsg = "Pls. check your photo";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmsg + "');", true);

                }
                else
                {


                    fPhoto.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + filename);
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

                    guest.updateGuest(gid, guestname, guestcontact, txtHouseNo.Text, txtBarangay.Text, muni, path);
                    Response.Redirect("Guest.aspx");
                }
            }
            else
            {
                alertmsg = "Pls. upload your photo";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmsg + "');", true);
            }

        }

        protected void selected_drpPSV(object sender, EventArgs e)
        {

        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */

        }
    }
}