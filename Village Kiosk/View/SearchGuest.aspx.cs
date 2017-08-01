using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;
using System.Configuration;
using AjaxControlToolkit;

namespace Village_Kiosk.View
{
    public partial class SearchGuest : System.Web.UI.Page
    {
        VillageKioskClass search = new VillageKioskClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grdSearch.DataSource = search.selectGuest().Tables["selectGuest"];
                grdSearch.DataBind();

                ModalPopupExtender1.Hide();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if ((String.IsNullOrEmpty(txtSearch.Text)))
            {
                string alertmessage = "Please fill up the search bar";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmessage + "');", true);
            }
            else
            {
                grdSearch.DataSource = search.searchGuest(txtSearch.Text).Tables["searchGuest"];
                grdSearch.DataBind();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
            grdSearch.DataSource = search.selectGuest().Tables["selectGuest"];
            grdSearch.DataBind();
        }

        
       protected void btnEdit_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow row = (GridViewRow)imgbtn.NamingContainer;
            string id = this.grdSearch.DataKeys[row.RowIndex].Value.ToString();
            /*Response.Redirect("EditGuest.aspx?id=" + id);*/

            lblforId.Text = id;
     }

        protected void btnDelete_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow row = (GridViewRow)imgbtn.NamingContainer;
            string id = this.grdSearch.DataKeys[row.RowIndex].Value.ToString();
            search.deleteGuest(id);
            Response.Redirect("SearchGuest.aspx");
        }

        protected void gridGuest_IndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdSearch.PageIndex = e.NewPageIndex;
            grdSearch.DataSource = search.selectGuest().Tables["selectGuest"];
            grdSearch.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string id = lblforId.Text;
            if ((String.IsNullOrEmpty(txtUsername.Text)) || (String.IsNullOrEmpty(txtPassword.Text)))
            {
                string message = "Please Login.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }

            if (search.CheckUser(txtUsername.Text, txtPassword.Text))
            {
                Response.Redirect("EditGuest.aspx?id=" + id);
            }
            else
            {
                string msg = "Invalid username or password.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                txtPassword.Text = "";
                txtUsername.Text = "";
            }
        }

        protected void grdGuest_Command(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditValue")
            {
                
                ModalPopupExtender1.Show();
            }
        }
        
    }
}