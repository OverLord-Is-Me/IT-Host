using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUC_DriverMange : System.Web.UI.UserControl
{
    Driver re = new Driver();
    protected void Page_Load(object sender, EventArgs e)
    {
        btnupd.Enabled = false;
        btndlt.Enabled = false;
  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        lblMsg2.Text = "";
        btnsve.Text = "Add";
        MultiView1.ActiveViewIndex = 1;
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        Image4.Visible = false;
        lbladd.Text = "add";


        txtid.Text = re.getDriverid();


    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        lblMsg.Text = re.DeleteDr(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text), GridView1.SelectedRow.Cells[2].Text,Convert.ToDouble(GridView1.SelectedRow.Cells[4].Text));
        btndlt.Enabled = false;
        btnupd.Enabled = false;
  
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        lblMsg2.Text = "";
        Label8.Text = "Update Driver";
        btnsve.Text = "Update";
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox5.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBox6.Text = GridView1.SelectedRow.Cells[5].Text;
        TextBox7.Text = GridView1.SelectedRow.Cells[6].Text;
        TextBox8.Text = GridView1.SelectedRow.Cells[7].Text;
        Image4.ImageUrl = "../Driver_img/" + GridView1.SelectedRow.Cells[1].Text + ".jpg";
        Image4.Visible = true; ;
        TextBox2.Enabled = false;
        TextBox5.Enabled = false;
        MultiView1.ActiveViewIndex = 1;
  
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        GridView1.DataSource = re.SearchDriver(RBLsearch1.SelectedValue, TextBox1.Text);
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        lblMsg.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (lbladd.Text == "add")
        {
            lblMsg2.Text = re.AddDr(TextBox2.Text, TextBox4.Text, Convert.ToDouble(TextBox5.Text), TextBox6.Text, TextBox7.Text, Convert.ToDouble(TextBox8.Text));
            lbladd.Text = "";

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("../Driver_img") + "\\" + txtid.Text + ".jpg");
                lblMsg2.Text += " <br/> image Done ";
            }
            else
            {
                lblMsg2.Text += " <br/> there Something Wrong with the image";
            }

        }
        else
        {
            lblMsg2.Text = re.updateDriver(TextBox4.Text, TextBox6.Text, TextBox7.Text, Convert.ToDouble(TextBox8.Text));
            
   
        }

      
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnupd.Enabled = true;
        btndlt.Enabled = true;
   
    }
}