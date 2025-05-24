using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUC_LogForCheckout : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Register Rg = new Register();
        if (Rg.Login(txtFullN.Text, txtPass.Text))
        {
            Utllty.CreateCookie("LogIn", new string[] { "FullName", "Password" }, new string[] { txtFullN.Text, txtPass.Text }, !chkremember.Checked, Response);
            Response.Redirect("../Page/Checkout.aspx");
        }
        else
        {
            lblmsg.Text = "Go Kill Your Self";
        }
    }
}