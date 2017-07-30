using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Village_Kiosk.View
{
    public partial class OptionsHomeOwner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNewHO_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeOwners.aspx");
        }

        protected void btnSearchHO_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchHO.aspx");
        }
    }
}