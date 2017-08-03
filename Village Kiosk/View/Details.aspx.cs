using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;

namespace Village_Kiosk.View
{
    public partial class Details : System.Web.UI.Page
    {
        VillageKioskClass details = new VillageKioskClass();

        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (Request.QueryString["ID"] != null && IsPostBack == false)
            {
                string id = Request.QueryString["ID"];

                if (details.getEvents(id).Tables["getDetails"].Rows.Count > 0){

                Label1.Text = details.getEvents(id).Tables["getDetails"].Rows[0]["EventDesc"].ToString();

                }
            }



        }
    }
}