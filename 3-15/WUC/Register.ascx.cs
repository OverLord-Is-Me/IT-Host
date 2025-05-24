using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class WUC_Register : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnregister_Click(object sender, EventArgs e)
    {
        
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "RegisterManager";
            cmd.Parameters.AddWithValue("@Check", 'a');
            cmd.Parameters.AddWithValue("@FullName", txtname.Text);
            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@NationalID", txtnationaid.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@PhonNo", txtphone.Text);
            
            conn.Open();
            try
            {
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Saved";
            }
            catch (Exception ex)
            {

                lblMsg.Text = ex.Message;
            }
            conn.Close();

            //TextBox3.Enabled = false; TextBox4.Enabled = false;
            //TextBox5.Enabled = false; TextBox6.Enabled = false;
            //TextBox7.Enabled = false; TextBox8.Enabled = false;

            //TextBox3.Text = ""; TextBox4.Text = "";
            //TextBox5.Text = ""; TextBox6.Text = "";
            //TextBox7.Text = ""; TextBox8.Text = "";

            
        }
    
    protected void btnempty_Click(object sender, EventArgs e)
    {
        
            txtname.Text = "";
            txtaddress.Text = "";
            txtemail.Text = "";
            txtnationaid.Text = "";
            txtpassword.Text = "";
            txtphone.Text = "";
            txtrepassword.Text = "";

       
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");   
    }
}