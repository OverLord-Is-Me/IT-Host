using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUC_Login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        lblmsg.Text = "";
        img.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Register Rg = new Register();
        //DBC db = new DBC();
        //string Log = string.Format("select * From Register Where {0} like'%{1}%' ", "FullName", txtFullN.Text);
        //GridView2.DataSource = Rg.Login(txtFullN.Text,txtPass.Text);
        //GridView2.DataBind();

        if (Rg.Login(txtFullN.Text, txtPass.Text))
        { img.Visible = true; }
        else { lblmsg.Text = "Go Kill Your Self"; }
    }
}