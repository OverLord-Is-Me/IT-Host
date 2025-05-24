using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUC_ProDetail : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Product pro = new Product();
        if(Request.QueryString["Catid"]!=null && Request.QueryString["porid"]!=null)
        {
        if(pro.find(Request.QueryString["Catid"].ToString(),Request.QueryString["Proid"].ToString()))
        {
            lblcat.Text= pro.CatId.ToString();
            lblproid.Text=pro.ProId.ToString();
            lblproname.Text=pro.ProName;
            lblprice.Text=pro.ProPrice.ToString();
            lblprodetails.Text=pro.ProDetails;
            Maxaq.Text = pro.Avqty.ToString();
            imgpro.ImageUrl="..//imag//"+pro.CatId+"."+pro.ProId+".jpg";
        }
        }
             
            
    }
}