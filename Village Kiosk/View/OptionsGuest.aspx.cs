using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Village_Kiosk.View
{
    public partial class OptionsGuest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNewG_Click(object sender, EventArgs e)
        {
            Response.Redirect("Guest.aspx");
        }

        protected void btnLoginG_Click(object sender, EventArgs e)
        {
            Response.Redirect("Visitor.aspx");
        }

        protected void btnToday_Click(object sender, EventArgs e)
        {
            Response.Redirect("TodaysVisitorList.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchGuest.aspx");
        }


    }
}