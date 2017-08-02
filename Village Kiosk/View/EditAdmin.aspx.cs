using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;

namespace Village_Kiosk.View
{
    public partial class EditAdmin : System.Web.UI.Page
    {
        string password, id, name, username, designation, question, answer;
        VillageKioskClass admin = new VillageKioskClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null && IsPostBack == false)
            {
                string id = Request.QueryString["id"];

                adminForId.Text = id;
                txtname.Text = admin.getAdmin(id).Tables["getAdmin"].Rows[0][2].ToString();
                txtusername.Text = admin.getAdmin(id).Tables["getAdmin"].Rows[0][3].ToString();
                drpDesignation.SelectedItem.Text = admin.getAdmin(id).Tables["getAdmin"].Rows[0][4].ToString();
                drpQuestion.SelectedItem.Text = admin.getAdmin(id).Tables["getAdmin"].Rows[0][5].ToString();
                txtAnswer.Text = admin.getAdmin(id).Tables["getAdmin"].Rows[0][6].ToString();
                txtPassword.Text = admin.getAdmin(id).Tables["getAdmin"].Rows[0][7].ToString();


            }    

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            id = adminForId.Text;
            name = txtname.Text;
            designation = drpDesignation.SelectedItem.Text;
            question = drpQuestion.SelectedItem.Text;
            answer = txtAnswer.Text;

           if (String.IsNullOrEmpty(txtPassword.Text))
                {
                    password = "12345678";
                }
                else
                {
                    password = txtPassword.Text;
                }


           admin.updateAdmin(id, name, txtusername.Text, designation, question, answer, password);

            string message = "Admin updated";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);

           

            Response.Redirect("ViewAdmin.aspx");
        }


        protected void Fullname_Changed(object sender, EventArgs e)
        {
            Random random = new Random();

            for (int i = 0; i < 2; i++)
            {
                username = txtname.Text.Substring(txtname.Text.LastIndexOf(' ') + 1) + (Convert.ToString(random.Next(10, 200)));

            }
            string forUsername = username;
            txtusername.Text = forUsername;
        }
    }
}