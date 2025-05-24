using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

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
                lbldte.Text = re.WritingData.ToString();
                TextBox1.Text = re.Avqty.ToString();
               //Img.ImageUrl = "Prod_img//" + re.CatId + "_" + re.ProId + ".jpg";
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        DataTable tbl;
        if (Session["cart"] == null)
        {
            tbl = new DataTable();
            tbl.Columns.Add("CatId");
            tbl.Columns.Add("ProId");
            tbl.Columns.Add("ProName");
            tbl.Columns.Add("ProPrice");
            tbl.Columns.Add("Avqty");
           tbl.Columns.Add("WritingData");
            DataColumn[]cols={tbl.Columns[0],tbl.Columns[1] };
            tbl.Constraints.Add("cart_pk", cols ,true);
        }
        else
        tbl =(DataTable) Session["cart"];
        

        DataRow row = tbl.NewRow();
        row[0] = lblcat.Text;
        row[1] = lblproid.Text;
        row[2] = lblpronm.Text;
        row[3] = lblprc.Text;
        row[4] = TextBox1.Text;
        // row[5] = Convert.ToInt16(TextBox1)*Convert.ToDouble(lblprc.Text);
        tbl.Rows.Add(row);
        Session["cart"] = tbl;

        Response.Redirect("AllCat.aspx");
    }
}