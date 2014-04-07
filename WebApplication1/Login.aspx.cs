﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.LnkBtnSignOut.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //if (Membership.ValidateUser(txtUserName.Text, txtPassword.Text))
            if (FormsAuthentication.Authenticate(txtUserName.Text, txtPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, chkRemPass.Checked);
            }
            else
            {
                lblMsg.Text = "Invalid credentials. Please try again.";
            }
        }
    }
}