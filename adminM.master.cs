using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShreyDynTravels
{
    public partial class adminM : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (e.Item.Text == "Sign Out")
            {
                HttpCookie cook = Request.Cookies["Credentials"];
                if (cook != null)
                {
                    cook.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(cook);
                }
                Response.Redirect("~/Intro.aspx");
            }
        }
    }
}