using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;

namespace Village_Kiosk.View
{
    public partial class Logs : System.Web.UI.Page
    {

        VillageKioskClass log = new VillageKioskClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                grdLogs.DataSource = log.selectLogs().Tables["selectLog"];
                grdLogs.DataBind();

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            grdLogs.DataSource = log.searchLog(txtSearch.Text).Tables["searchLog"];
            grdLogs.DataBind();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
            grdLogs.DataSource = log.selectLogs().Tables["selectLog"];
            grdLogs.DataBind();
        }
    }
}