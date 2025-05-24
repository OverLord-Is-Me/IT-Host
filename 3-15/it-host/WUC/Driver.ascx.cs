using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUC_Driver : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = ""; txtname.Enabled = true; txtpass.Enabled = true;
        txtnaid.Enabled = true; txtaddres.Enabled = true;
        txtemail.Enabled = true; txtphone.Enabled = true;
        txtcarnu.Enabled=true; txtcarty.Enabled = true;
        lblMsg.Visible = false;
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Driver Dr= new Driver();
       
        lblMsg.Visible = true;
        lblMsg.Text = Dr.AddDr(txtname.Text, 
            txtpass.Text, 
            txtnaid.Text,
            txtaddres.Text,
            txtemail.Text,
            txtphone.Text);
    
    }
}