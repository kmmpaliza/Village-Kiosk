using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using VillageClass;
using System.Globalization;

namespace Village_Kiosk.View
{
    public partial class Schedule : System.Web.UI.Page
    {

        string title, desc, date;
        VillageKioskClass eventSched = new VillageKioskClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtEvents = new DataTable();

                dtEvents.Columns.Add(new DataColumn("EventDate", typeof(System.DateTime)));
                dtEvents.Columns.Add(new DataColumn("EventTitle"));
                dtEvents.Columns.Add(new DataColumn("EventDescription"));

                /*  dtEvents.Rows.Add(DateTime.Now.AddDays(10), "Lunch Party", "Address: Mitali Restaurent, 10 New eskaton, Dhaka");
                  dtEvents.Rows.Add(DateTime.Now.AddDays(7), "Dance Party", "Address: Hotel Purbani, 10 New eskaton, Dhaka");
                  dtEvents.Rows.Add(DateTime.Now.AddDays(2), "Dinner Party", "Address: Seraton, 10 New eskaton, Dhaka");*/

                foreach (DataRow row in eventSched.selectEvent().Tables["selectEvent"].Rows)
                {

                    string eventdate = row["EventDate"].ToString();

                    dtEvents.Rows.Add(Convert.ToDateTime(eventdate), row["EventTitle"].ToString(), row["EventDesc"].ToString());

                }


                ViewState["dtEvents"] = dtEvents;


            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            
           

            e.Cell.BorderColor = System.Drawing.Color.Black;
            e.Cell.BorderStyle = BorderStyle.Solid;
            e.Cell.BorderWidth = 1; 

            if (e.Day.IsToday)
            {
                e.Cell.BorderColor = System.Drawing.Color.Silver;
                e.Cell.BackColor = System.Drawing.Color.Bisque;
                e.Cell.BorderStyle = BorderStyle.Solid;
                e.Cell.BorderWidth = 2;
            }

            if (ViewState["dtEvents"] != null)
            {
                DataTable dtEvents = (DataTable)ViewState["dtEvents"];
                foreach (DataRow oItem in dtEvents.Rows)
                {
                    if (Convert.ToDateTime(oItem["EventDate"]).ToString("dd-MM-yyyy") == e.Day.Date.ToString("dd-MM-yyyy"))
                    {
                        Literal ltrl = new Literal();
                        ltrl.Text = "<BR />";
                        e.Cell.Controls.Add(ltrl);

                        e.Cell.BorderColor = System.Drawing.Color.Red;
                        e.Cell.BackColor = System.Drawing.ColorTranslator.FromHtml("#EEE8AA");
                        e.Cell.BorderStyle = BorderStyle.Solid;
                        e.Cell.BorderWidth = 2;

                        Label b = new Label();
                        b.Font.Size = 13;
                        b.Font.Bold = true;
                        b.ForeColor = System.Drawing.ColorTranslator.FromHtml("#CC0808");
                        b.Text = oItem["EventTitle"].ToString();

                       
                      
                        
                        e.Cell.Controls.Add(b);

                      
                    /*    Label d = new Label();

                        
                            d.Font.Size = 9;
                            d.Font.Bold = false;
                            d.ForeColor = System.Drawing.ColorTranslator.FromHtml("#000");
                            d.Text = oItem["EventDescription"].ToString() + "<BR/>";
                        }*/


                      LinkButton ltrl2 = new LinkButton();
                      ltrl2.Text = "<BR /><a style='font-size:10px'  href='Details.aspx?ID="+ b.Text +"'>Details</a>";
                        

                      e.Cell.Controls.Add(ltrl2);
                        
                    }
                }
            }
        }

        protected void createEvent(object sender, EventArgs e)
        {
            signup.Visible = true;
            Button1.Visible = false;

        }

        protected void done(object sender, EventArgs e)
        {
            signup.Visible = false;
            Button1.Visible = true;

        }



        protected void cmdCreate_Click(object sender, EventArgs e)
        {

            

            if (ViewState["dtEvents"] != null)
            {
               
                

                date = txtDate.Text;
                title = txtEvent.Text;
                desc = txtEventDescription.Text;


                DataTable dtEvents = (DataTable)ViewState["dtEvents"];
                //  dtEvents.Rows.Add(Convert.ToInt32(txtEventID.Text), Convert.ToDateTime(date), desc, date);
                dtEvents.Rows.Add(Convert.ToDateTime(txtDate.Text), txtEvent.Text, txtEventDescription.Text);
                ViewState["dtEvents"] = dtEvents;


                string message = "Data Added Successfully";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);

                eventSched.insertEvent(title, desc, date);

                txtDate.Text = String.Empty;
                txtEvent.Text = String.Empty;
                txtEventDescription.Text = String.Empty;
            }
        }

    }

}

