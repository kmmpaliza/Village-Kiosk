using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using VillageClass;

namespace Village_Kiosk.View
{
    public partial class SearchHO : System.Web.UI.Page
    {
        VillageKioskClass homeOwner = new VillageKioskClass();


        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack)
           {

               grdHomeOwner.DataSource = homeOwner.selectHomeOwner().Tables["selectHomeOwner"];
               grdHomeOwner.DataBind();

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
                grdHomeOwner.DataSource = homeOwner.searchHomeowner(txtSearch.Text).Tables["searchHomeowner"];
                grdHomeOwner.DataBind();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
            grdHomeOwner.DataSource = homeOwner.selectHomeOwner().Tables["selectHomeOwner"];
            grdHomeOwner.DataBind();
        }

       

        protected void btnEdit_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow row = (GridViewRow)imgbtn.NamingContainer;
            string id = Convert.ToString(this.grdHomeOwner.DataKeys[row.RowIndex].Value);
            //Response.Redirect("EditHomeOwners.aspx?id=" + id);

            lblforId.Text = id;
        }

        protected void btnDelete_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow row = (GridViewRow)imgbtn.NamingContainer;
            string id = Convert.ToString(this.grdHomeOwner.DataKeys[row.RowIndex].Value);
            homeOwner.deleteHomeOwner(id);
            Response.Redirect("SearchHO.aspx");
        }

        protected void gridHO_IndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdHomeOwner.PageIndex = e.NewPageIndex;
            grdHomeOwner.DataSource = homeOwner.selectHomeOwner().Tables["selectHomeOwner"];
            grdHomeOwner.DataBind();

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string id = lblforId.Text;
            if ((String.IsNullOrEmpty(txtUsername.Text)) || (String.IsNullOrEmpty(txtPassword.Text)))
            {
                string message = "Please Login.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }

            if (homeOwner.CheckUser(txtUsername.Text, txtPassword.Text))
            {
                Response.Redirect("EditHomeOwners.aspx?id=" + id);
            }
            else
            {
                string msg = "Invalid username or password.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                txtPassword.Text = "";
                txtUsername.Text = "";
            }
        }

        protected void gridHO_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditValue")
            {

                ModalPopupExtender1.Show();
            }
        }

        
      
    }
}