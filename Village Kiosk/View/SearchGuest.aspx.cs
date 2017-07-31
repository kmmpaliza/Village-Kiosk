using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;

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

        protected void gridGuest_Editing(object sender, GridViewEditEventArgs e)
        {
            string id = Convert.ToString(grdSearch.DataKeys[e.NewEditIndex].Value);
            Response.Redirect("EditGuest.aspx?id=" + id);
        }

        protected void gridGuest_Deleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = Convert.ToString(this.grdSearch.DataKeys[e.RowIndex].Value);
            search.deleteGuest(id);
            Response.Redirect("SearchGuest.aspx");
        }

        protected void gridGuest_IndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdSearch.PageIndex = e.NewPageIndex;
            grdSearch.DataSource = search.selectGuest().Tables["selectGuest"];
            grdSearch.DataBind();
        }
    }
}