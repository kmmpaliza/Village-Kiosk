using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;

namespace Village_Kiosk.View
{
    public partial class OptionAdmin : System.Web.UI.Page
    {
        VillageKioskClass admin = new VillageKioskClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
            
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            
            ModalPopupExtender1.Show();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if ((String.IsNullOrEmpty(txtUsername.Text)) || (String.IsNullOrEmpty(txtPassword.Text)))
            {
                string message = "Please Login.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }

            if (admin.CheckUser(txtUsername.Text, txtPassword.Text))
            {
                Response.Redirect("ViewAdmin.aspx");
            }
            else
            {
                string msg = "Invalid username or password.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                txtPassword.Text = "";
                txtUsername.Text = "";
            }
        }
    }
}