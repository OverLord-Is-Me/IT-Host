//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data;
//using System.Configuration;
//using MySql.Data.MySqlClient;

//public partial class Page_Visitor_Default2 : System.Web.UI.Page
//{
//    protected void Page_Load(object sender, EventArgs e)
//    {
//        if (this.IsPostBack)
//        {
//            string main = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
//            MySqlConnection sqlconn = new MySqlConnection(main);
//            MySqlCommand comm = new MySqlCommand("select * from category");
//            {
//                MySqlDataAdapter da = new MySqlDataAdapter();
//                comm.Connection = sqlconn;
//                da.SelectCommand = comm;
//                DataTable dt = new DataTable();
//                {
//                    da.Fill(dt);
//                    GridView1.DataSource = dt;
//                    GridView1.DataBind();
//                }
//            }
//        }
//    }
//}