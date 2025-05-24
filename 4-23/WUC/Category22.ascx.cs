using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUC_Category22 : System.Web.UI.UserControl
{
    Category re = new Category();
    protected void Page_Load(object sender, EventArgs e)
    {
        Button2.Enabled = false;
        Button6.Enabled = false;
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        GridView1.DataSource = re.SearchCat(RBLsearch1.SelectedValue, TextBox1.Text);
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        lblMsg.Text = "";

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button2.Enabled = true;
        Button6.Enabled = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        lblMsg.Text = re.DeleteCat(GridView1.SelectedRow.Cells[2].Text);
        Button2.Enabled = false;
        Button6.Enabled = false;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        lblMsg2.Text = "";
       
        MultiView1.ActiveViewIndex = 1;
        TextBox2.Text = "";
        TextBox3.Text = "";
        Image4.Visible = false;
        lbladd.Text = "add";


        txtid.Text = re.getcatid();


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        if (lbladd.Text == "add")
        {
            lblMsg2.Text = re.AddCat(TextBox2.Text, TextBox3.Text);
            lbladd.Text = "";

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("../Cat_img") + "\\" + txtid.Text + ".jpg");
                lblMsg2.Text += " <br/> image Done ";
            }
            else
            {
                lblMsg2.Text += " <br/> there Something Wrong with the image";
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
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
        Image4.ImageUrl = "../Cat_img/" + GridView1.SelectedRow.Cells[1].Text+".jpg";
        Image4.Visible = true; ;
        MultiView1.ActiveViewIndex = 1;
    }
}