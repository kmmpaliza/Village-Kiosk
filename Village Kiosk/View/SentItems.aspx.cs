using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;

namespace Village_Kiosk.View
{
    public partial class SentItems : System.Web.UI.Page
    {
        VillageKioskClass sent = new VillageKioskClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grdSent.DataSource = sent.selectSent().Tables["selectSent"];
                grdSent.DataBind();

            }
        }

        protected void grdSent_IndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdSent.PageIndex = e.NewPageIndex;
            grdSent.DataSource = sent.selectSent().Tables["selectSent"];
            grdSent.DataBind();
        }
    }
}