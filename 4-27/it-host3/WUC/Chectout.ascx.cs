using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class WUC_Chectout : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["login"] == null)
           Wizard1.ActiveStepIndex = 0;
        //if (Session["cart"] == null)
          // Response.Redirect("http://localhost:1972/it-host2/Page/Checkout.aspx");
        
    }
    protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
    {
        if (Request.Cookies["login"] == null)
            Wizard1.ActiveStepIndex = 0;
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        if (Request.Cookies["login"] != null&&Session["cart"]!=null)
        {
            Cart c = new Cart();
            Orders o = new Orders();
            Orderdetails d = new Orderdetails();
            DataTable cart = (DataTable)Session["cart"];

            c.Cardtype = ddl.SelectedValue;
            c.Cardnumber = txtcartnum.Text;
            c.Month = Convert.ToInt16(txtmanth.Text);
            c.Year = Convert.ToInt16(txtyear.Text);
            c.Nameincard = txtnamecart.Text;
            c.Fullname = Request.Cookies["login"]["FullName"].ToString();
            o.orid = o.getnextorderno();
            o.ordate = Convert.ToInt32 ( DateTime.Now);
            o.shipcity = txtcity.Text;
            o.shiparea = txtarea.Text;
            o.shipaddress = txtaddress.Text;
            o.member = c.Fullname;
            d.Ordid = o.orid;
            if (c.Add())
                lblmsg.Text = "DataSaved";
            else
            {
                c.update();
                lblmsg.Text = "your card already exists";
            }


            if (o.add())
            {
                lblmsg.Text = "<br/>Order Data Saved";

                for (int x = 0; x < cart.Rows.Count; x++)
                {
                    d.CatId = Convert.ToInt16(cart.Rows[x][0].ToString());
                    d.ProId = Convert.ToInt16(cart.Rows[x][1].ToString());
                    d.Qty = Convert.ToInt16(cart.Rows[x][4].ToString());
                    d.SellPrice = Convert.ToInt16(cart.Rows[x][3].ToString());
                    d.Discount = 0;
                    if (d.AddOrdDt())
                        lblmsg.Text = "<br/>Product" + d.CatId + "-" + d.ProId + "isAdded";
                    else
                         lblmsg.Text = "<br/>Product" + d.CatId + "-" + d.ProId + "isAdded";
                }
            }
            else
            
                lblmsg.Text = "Order not completed";
            }
           else
            lblmsg.Text="Please add products and login first";



        }
    }
