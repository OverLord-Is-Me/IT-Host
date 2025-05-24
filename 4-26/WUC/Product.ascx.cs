using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUC_Product : System.Web.UI.UserControl
{
    Product re = new Product();
    protected void Page_Load(object sender, EventArgs e)
    {

        btnupdt.Enabled = false;
        btndlt.Enabled = false;
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        GridView1.DataSource = re.SearchProd(RBLsearch1.SelectedValue, txtsrch.Text);
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        lblMsg.Text = "";

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnupdt.Enabled = true;
        btndlt.Enabled = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        lblMsg.Text = re.DeleteProd(Convert.ToInt32(GridView1.SelectedRow.Cells[2].Text));
        btnupdt.Enabled = false;
        btndlt.Enabled = false;
        GridView1.DataBind();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        lblMsg2.Text = "";
       
        MultiView1.ActiveViewIndex = 1;
        txt2.Text = "";
        txt3.Text = "";
        txt4.Text = "";
        txt5.Text = "";
        txt6.Text = Convert.ToString( DateTime.Now);
        Image4.Visible = false;
        lbladd.Text = "add";


        txt1.Text = re.getProid();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        if (lbladd.Text == "add")
        {
            lblMsg2.Text = re.AddPro(Convert.ToInt32(txt1.Text), txt2.Text, Convert.ToInt32(txt3.Text), Convert.ToInt32(txt4.Text),Convert.ToDateTime(DateTime.Now), txt5.Text);
            lbladd.Text = "";
            txt6.Text = Convert.ToString( DateTime.Now);
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("../Prod_img") + "\\" + txt1.Text + ".jpg");
                lblMsg2.Text += "<br/> image Done ";
            }
            else
            {
                lblMsg2.Text += "<br/> there Something Wrong with the image";
            }

        }
        else
        {
            lblMsg2.Text = re.Update();
        }

      

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        lblMsg2.Text = "";
        DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[1].Text;
        txt1.Text = GridView1.SelectedRow.Cells[2].Text;
        txt2.Text = GridView1.SelectedRow.Cells[3].Text;
        txt3.Text = GridView1.SelectedRow.Cells[4].Text;
        txt4.Text = GridView1.SelectedRow.Cells[5].Text;
        txt5.Text = GridView1.SelectedRow.Cells[7].Text;
        txt6.Text = GridView1.SelectedRow.Cells[6].Text;
        Image4.ImageUrl = "../Prod_img/" + GridView1.SelectedRow.Cells[1].Text + ".jpg";
        Image4.Visible = true; ;
        MultiView1.ActiveViewIndex = 1;
    }
}