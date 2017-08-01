using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;

namespace Village_Kiosk.View
{
    public partial class VisitorsLogout : System.Web.UI.Page
    {
         string name, persontovisit, reasonofvisit, mobile, timein, timeout;
        VillageKioskClass visitor = new VillageKioskClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grdVisitor.DataSource = visitor.getLogoutVisitor("").Tables["checkLogOutGuest"];
                grdVisitor.DataBind();

            }
        }

            protected void grdVisitor_Editing(object sender, GridViewEditEventArgs e)
        {
            string id = Convert.ToString(this.grdVisitor.DataKeys[e.NewEditIndex].Value);
            name = visitor.getVisitor(id).Tables["getVisitor"].Rows[0][2].ToString();
            persontovisit = visitor.getVisitor(id).Tables["getVisitor"].Rows[0][3].ToString();
            reasonofvisit = visitor.getVisitor(id).Tables["getVisitor"].Rows[0][4].ToString();
            mobile = visitor.getVisitor(id).Tables["getVisitor"].Rows[0][5].ToString();
            timein = visitor.getVisitor(id).Tables["getVisitor"].Rows[0][6].ToString();
            timeout = DateTime.Now.ToString("M/d/yyyy h:mm:ss tt");
            visitor.updateVisitor(id, name, persontovisit, reasonofvisit, mobile, timein, timeout);
            Response.Redirect("TodaysVisitorList.aspx");
        }

        protected void grdVisitor_IndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdVisitor.PageIndex = e.NewPageIndex;
            grdVisitor.DataSource = visitor.selectVisitor().Tables["selectVisitor"];
            grdVisitor.DataBind();

        }
        
    }
}