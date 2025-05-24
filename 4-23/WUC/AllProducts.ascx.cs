using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUC_AllProducts : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["CatId"]!=null)
        {
            SqlDataSource1.SelectCommand = "SELECT * From [Product] Where CatId =" + Request.QueryString["CatId"].ToString();
        }
        else
        {
            SqlDataSource1.SelectCommand = "SELECT * From [Product]";
        }
    }

}