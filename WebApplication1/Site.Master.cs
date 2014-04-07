using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WebApplication1
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public LinkButton LnkBtnSignOut
        {
            get
            {
                return this.lnkSignOut;
            }
        }

        protected void lnkSignOut_Click(object sender, EventArgs e)
        {
            // Clear cookies
            FormsAuthentication.SignOut();
            Session.Clear();  // This may not be needed -- but can't hurt
            Session.Abandon();

            // Clear authentication cookie
            HttpCookie FormsCookie = new HttpCookie(FormsAuthentication.FormsCookieName, "");
            FormsCookie.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(FormsCookie);

            // Clear session cookie 
            HttpCookie SessionCookie = new HttpCookie("ASP.NET_SessionId", "");
            SessionCookie.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(SessionCookie);


            // Invalidate the Cache on the Client Side
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();

            
            Response.Redirect("~/Login.aspx");
            //Server.Transfer("~/Login.aspx");
        }
    }
}