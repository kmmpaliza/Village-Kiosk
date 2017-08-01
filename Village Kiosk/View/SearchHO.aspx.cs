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
        DataSet ds = new DataSet();

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

        protected void gridHO_Editing(object sender, GridViewEditEventArgs e)
        {
            string id = Convert.ToString(grdHomeOwner.DataKeys[e.NewEditIndex].Value);
            Response.Redirect("EditHomeOwners.aspx?id=" + id);
        }

        protected void gridHO_Deleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = Convert.ToString(this.grdHomeOwner.DataKeys[e.RowIndex].Value);
            homeOwner.deleteHomeOwner(id);
            Response.Redirect("SearchHO.aspx");
        }

        

        
      
    }
}