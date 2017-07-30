using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VillageClass;
using System.Data;
using System.Web.UI.HtmlControls;



namespace Village_Kiosk.Master
{
    public partial class VillageMaster : System.Web.UI.MasterPage
    {
        
        VillageKioskClass logout = new VillageKioskClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = logout.selectLogin();
            string username = logout.searchCurrentLogin(id).Tables["searchCurrentLogin"].Rows[0][2].ToString();
            string adminname = logout.searchAdmin(username).Tables["searchAdmin"].Rows[0][2].ToString();
            txtAdminName.Text = adminname;
            
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            
                int id = logout.selectLogin();
                logout.updateLogin(id, DateTime.Now.ToString());
                Session.Clear();
                Session.Abandon();
                Session.RemoveAll();
                Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetNoStore();
                System.Web.Security.FormsAuthentication.SignOut();
                Response.Redirect("Login.aspx", false);
        }
    }
}