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
        string user = Utllty.ReadFromCookie("LogIn", "FullName", Request);
        //if (user != null)
        //    //Redirect(user);
        //    MultiView1.ActiveViewIndex = 1;
      
       
        lblmsg.Text = "";

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Register Rg = new Register();
        if (Rg.Login(txtFullN.Text, txtPass.Text))
        { 
            Utllty.CreateCookie("LogIn", new string[] { "FullName", "Password" }, new string[] { txtFullN.Text, txtPass.Text }, !chkremember.Checked, Response);
            MultiView1.ActiveViewIndex = 1;
            //Redirect(txtFullN.Text);
        }
        else
        { 
            lblmsg.Text = "Go Kill Your Self"; 
        }
    }

    private void Redirect(string FullName)
    {
        if (FullName == "MangerAdmin")
        { Response.Redirect("../Page_Manager/MangerAdmin.aspx"); }
        else if (FullName == "DelvAdmin")
        { Response.Redirect("../Page_Manager/DelvAdmin.aspx"); }
        else if (FullName == "AdminCat")
        { Response.Redirect("../Page_Manager/AdminCat.aspx"); }
        else { MultiView1.ActiveViewIndex = 1; }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string user = Utllty.ReadFromCookie("LogIn", "FullName", Request);

        if (user == "MangerAdmin")
        { Response.Redirect("../Page_Manager/MangerAdmin.aspx"); }
        else if (user == "DelvAdmin")
        { Response.Redirect("../Page_Manager/DelvAdmin.aspx"); }
        else if (user == "AdminCat")
        { Response.Redirect("../Page_Manager/AdminCat.aspx"); }
        else { Response.Redirect("../Page_Client/Client.aspx"); }
       
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Utllty.RemoveCookie("LogIn", Response);
        Response.Redirect("Login.aspx");
    }
}