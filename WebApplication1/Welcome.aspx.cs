using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Master.LnkBtnSignOut.Visible = true;
        }

        protected void lnkCreateRoute_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Route.aspx");
        }

        protected void lnkSpeech_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RouteShop.aspx");
        }
    }
}