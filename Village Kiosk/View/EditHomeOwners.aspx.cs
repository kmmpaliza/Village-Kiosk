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
    public partial class EditHomeOwners : System.Web.UI.Page
    {
        string homeownername, tenantname, homeownernumber, homeownermobile;
        VillageKioskClass homeOwner = new VillageKioskClass();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["id"] != null && IsPostBack == false)
            {
                string id = Request.QueryString["id"];
                homeOwner.HomeownerId = id;

                forEditID.Text = id;
                txtEditHOName.Text = homeOwner.getHomeOwner(homeOwner.HomeownerId).Tables["getHomeOwner"].Rows[0][2].ToString();
                txtEditTenantName.Text = homeOwner.getHomeOwner(homeOwner.HomeownerId).Tables["getHomeOwner"].Rows[0][3].ToString();
                txtEditHOHouseNumber.Text = homeOwner.getHomeOwner(homeOwner.HomeownerId).Tables["getHomeOwner"].Rows[0][4].ToString();
                txtEditHOMobileNumber.Text = homeOwner.getHomeOwner(homeOwner.HomeownerId).Tables["getHomeOwner"].Rows[0][5].ToString();

            }      
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if ((String.IsNullOrEmpty(txtEditHOName.Text)) || (String.IsNullOrEmpty(txtEditHOHouseNumber.Text))
                || (String.IsNullOrEmpty(txtEditHOMobileNumber.Text)))
            {
                string alertmessage = "Please Fill up the form";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmessage + "');", true);
            }
            else
            {

                string tid = forEditID.Text;
                homeownername = txtEditHOName.Text;
                tenantname = txtEditTenantName.Text;
                homeownernumber = txtEditHOHouseNumber.Text;
                homeownermobile = txtEditHOMobileNumber.Text;

                homeOwner.updateHomeOwner(tid, homeownername, tenantname, homeownernumber, homeownermobile);

                
                Response.Redirect("SearchHO.aspx");
            }
        }

      
   
        
    }
}