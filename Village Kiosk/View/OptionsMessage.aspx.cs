using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Village_Kiosk.View
{
    public partial class OptionsMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendMsg_Click(object sender, EventArgs e)
        {
            Response.Redirect("MessageBoard.aspx");
        }

        protected void btnSendMsgA_Click(object sender, EventArgs e)
        {
            Response.Redirect("MessageAll.aspx");
        }

        protected void btnSent_Click(object sender, EventArgs e)
        {
            Response.Redirect("SentItems.aspx");
        }
    }
}