using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUC_Orderdetails : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Visible = false;
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        Orderdetails Or=new Orderdetails ();
        lblMsg.Visible = true;
        lblMsg.Text=Or.AddOrdDt(txtcatid.Text,txtordid.Text,txtcatid.Text,txtqty.Text,txtsellprice.Text);

    }
}