using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class WUC_Support : System.Web.UI.UserControl
{

    Register re = new Register();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = re.Searchh(RadioButtonList2.SelectedValue, TextBox1.Text);
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        Button1.Enabled = false;
        lblMsg.Text = "";
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button1.Enabled = true;
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Button1.Enabled = true;
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        lblMsg.Text = re.DeleteReg(GridView1.SelectedRow.Cells[3].Text);
        Button1.Enabled = false;
        GridView1.DataBind();
    }
}