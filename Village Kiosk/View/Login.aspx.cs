using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;

namespace Village_Kiosk.View
{
    public partial class Login : System.Web.UI.Page
    {
        string message;
        VillageKioskClass login = new VillageKioskClass();
      

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if ((String.IsNullOrEmpty(txtUsername.Text)) || (String.IsNullOrEmpty(txtPassword.Text)))
            {
                message = "Please Login.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }

            if (login.CheckUser(txtUsername.Text, txtPassword.Text))
            {
                login.insertLogin(txtUsername.Text, DateTime.Now.ToString(), "");
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                message = "Invalid username or password.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                txtPassword.Text = "";
                txtUsername.Text = "";
            }
        }
    }
}