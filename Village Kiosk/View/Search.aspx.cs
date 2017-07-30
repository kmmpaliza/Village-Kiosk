using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;
using System.Data;
using System.Data.SqlClient;


namespace Village_Kiosk.View
{
    public partial class Search : System.Web.UI.Page
    {
        VillageKioskClass search = new VillageKioskClass();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void btnHO_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchHO.aspx");
        }

        protected void btnG_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchGuest.aspx");
        }

        
    }
}