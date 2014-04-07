using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        List<string> lstRoutes = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDirections_Click(object sender, EventArgs e)
        {

            //HttpCookie cookie = new HttpCookie("DirectionsHistory");
            ////cookie["History"] = hdnValue.Value;
            //lstRoutes.Add(lblrouteSave.Text);
            Session["history"] = hiddenfield.Value;
        }
    }
}