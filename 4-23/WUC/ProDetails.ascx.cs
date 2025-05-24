using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUC_ProDetails : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Product re = new Product();
        if (Request.QueryString["CatId"] != null && Request.QueryString["ProId"] != null)
        {
            if (re.Find(Convert.ToInt32(Request.QueryString["CatId"]),Convert.ToInt32(Request.QueryString["ProId"])))
            {
                lblcat.Text = re.CatId.ToString();
                lblproid.Text = re.ProId.ToString();
                lblpronm.Text = re.ProName;
                lblprc.Text = re.ProPrice.ToString();
                lblqty.Text = re.Avqty.ToString();
                lbldes.Text = re.ProDetails;
                //lbldte.Text = re.WritingData.ToString();
                TextBox1.Text = re.Avqty.ToString();
                Img.ImageUrl = "Prod_img//" + re.CatId + "_" + re.ProId + ".jpg";
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
}