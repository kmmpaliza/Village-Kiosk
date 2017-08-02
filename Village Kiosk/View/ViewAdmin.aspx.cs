using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;

namespace Village_Kiosk.View
{
    public partial class ViewAdmin : System.Web.UI.Page
    {
        VillageKioskClass admin = new VillageKioskClass();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                grdAdmin.DataSource = admin.selectAdmin().Tables["selectAdmin"];
                grdAdmin.DataBind();

            }

        }

        protected void gridAdmin_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditValue")
            {

                ModalPopupExtender1.Show();
            }
        }

        protected void gridAdmin_IndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdAdmin.PageIndex = e.NewPageIndex;
            grdAdmin.DataSource = admin.selectAdmin().Tables["selectAdmin"];
            grdAdmin.DataBind();
        }

        protected void btnEdit_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow row = (GridViewRow)imgbtn.NamingContainer;
            string id = Convert.ToString(this.grdAdmin.DataKeys[row.RowIndex].Value);
            //Response.Redirect("EditHomeOwners.aspx?id=" + id);

            lblforId.Text = id;
        }

        protected void btnDelete_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow row = (GridViewRow)imgbtn.NamingContainer;
            string id = Convert.ToString(this.grdAdmin.DataKeys[row.RowIndex].Value);
            admin.deleteAdmin(id);
            Response.Redirect("ViewAdmin.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string id = lblforId.Text;
            if ((String.IsNullOrEmpty(txtUsername.Text)) || (String.IsNullOrEmpty(txtPassword.Text)))
            {
                string message = "Please Login.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }

            if (admin.CheckUser(txtUsername.Text, txtPassword.Text))
            {
                Response.Redirect("EditAdmin.aspx?id=" + id);
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