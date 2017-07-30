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
    public partial class HomeOwners : System.Web.UI.Page
    {
        string homeownername, tenantname, homeownernumber, homeownermobile;
        VillageKioskClass homeOwner = new VillageKioskClass();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            /*if (!IsPostBack)
            {

                grdHomeOwner.DataSource = homeOwner.selectHomeOwner().Tables["selectHomeOwner"];
                grdHomeOwner.DataBind();

            }*/

            

        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            if (homeOwner.CheckHomeOwner(txtHomeOwnerName.Text, txtHomeOwnerHouseNumber.Text, txtHomeOwnerMobile.Text))
            {

                string message = "Details already exists";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }

            else if ((String.IsNullOrEmpty(txtHomeOwnerName.Text)) || (String.IsNullOrEmpty(txtHomeOwnerHouseNumber.Text)) || (String.IsNullOrEmpty(txtHomeOwnerMobile.Text)))
            {
                string message = "Please Fill Up The Form";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);


            }

            else
            {

                string message = "Data Added Successfully";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);

                homeownername = txtHomeOwnerName.Text;
                tenantname = txtTenantName.Text;
                homeownernumber = txtHomeOwnerHouseNumber.Text;
                homeownermobile = txtHomeOwnerMobile.Text;


                homeOwner.SaveHomeOwner(homeownername, tenantname, homeownernumber, homeownermobile);
                string activitylog = "Add Home owner";
                homeOwner.saveLog(homeownername, DateTime.Now.ToShortDateString(), DateTime.Now.ToShortTimeString(), activitylog);



                txtHomeOwnerName.Text = String.Empty;
                txtTenantName.Text = String.Empty;
                txtHomeOwnerHouseNumber.Text = String.Empty;
                txtHomeOwnerMobile.Text = String.Empty;

            }

        }

        /*protected void grdHomeOwner_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Response.Redirect("HomeOwners.aspx");
        }

        protected void grdHomeOwner_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdHomeOwner.PageIndex = e.NewPageIndex;
            grdHomeOwner.DataSource = homeOwner.selectGuest().Tables["selectHomeOwner"];
            grdHomeOwner.DataBind();
        }

        protected void grdHomeOwner_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string id = Convert.ToString(this.grdHomeOwner.DataKeys[e.NewEditIndex].Value);
            Response.Redirect("EditHomeOwners.aspx?id=" + id);

           
        }

    

        protected void grdHomeOwner_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = Convert.ToString(this.grdHomeOwner.DataKeys[e.RowIndex].Value);
            homeOwner.deleteHomeOwner(id);
            Response.Redirect("HomeOwners.aspx");
        }
        */
             
    }
}