using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class WUC_Register : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Visible = false;
    }

    protected void btnregister_Click(object sender, EventArgs e)
    {
        Register RE = new Register();
        lblMsg.Visible = true;
        lblMsg.Text= RE.AddReg(txtname.Text, txtpassword.Text,txtnationaid.Text, txtemail.Text,txtaddress.Text,txtphone.Text);
    }
    
    protected void btnempty_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
        txtnationaid.Text = "";
        txtpassword.Text = "";
        txtphone.Text = "";
        txtrepassword.Text = "";

       
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Home.aspx");   
    }
}