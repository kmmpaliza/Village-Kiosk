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

            String activepage = Request.RawUrl;
            if (activepage.Contains("OptionsHomeOwner.aspx") || activepage.Contains("HomeOwners.aspx")
                || activepage.Contains("SearchHO.aspx") || activepage.Contains("EditHomeOwners.aspx"))
            {
                First.Attributes.Add("class", "active");
            }
            else if (activepage.Contains("OptionsGuest.aspx") || activepage.Contains("Visitor.aspx")
                || activepage.Contains("Guest.aspx") || activepage.Contains("TodaysVisitorList.aspx")
                || activepage.Contains("SearchGuest.aspx") || activepage.Contains("EditGuest.aspx"))
            {
                SecondPage.Attributes.Add("class", "active");
            }
            else if (activepage.Contains("OptionsMessage.aspx") || activepage.Contains("MessageBoard.aspx")
                || activepage.Contains("MessageAll.aspx") || activepage.Contains("SentItems.aspx"))
            {
                Third.Attributes.Add("class", "active");
            }
            else if (activepage.Contains("Schedule.aspx"))
            {
                Fourth.Attributes.Add("class", "active");
            }
            else if (activepage.Contains("AdminDashboard.aspx") || activepage.Contains("EditAdmin.aspx")
                || activepage.Contains("ViewAdmin.aspx") || activepage.Contains("OptionAdmin.aspx"))
            {
                Five.Attributes.Add("class", "active");
            }
            
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            if (logout.checkLogoutGuest(""))
            {

                ModalPopupExtender1.Show();
                    
                    
            }
            else{

                Response.Redirect("Login.aspx", false);
                HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                HttpContext.Current.Response.Cache.SetNoServerCaching();
                HttpContext.Current.Response.Cache.SetNoStore();
                Session.Abandon();

                int id = logout.selectLogin();
                logout.updateLogin(id, DateTime.Now.ToString());
               
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx", false);
            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.Cache.SetNoServerCaching();
            HttpContext.Current.Response.Cache.SetNoStore();
            Session.Abandon();

            int id = logout.selectLogin();
            logout.updateLogin(id, DateTime.Now.ToString());
        }
    }
}