using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class WUC_ShipingCard : System.Web.UI.UserControl
{
    
    protected void gridcart_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void gridcart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable tbl;
        if (Session["cart"]!=null)
        {
            tbl = (DataTable)Session["cart"];
            string[] PK={gridcart.Rows[e.RowIndex].Cells[0].Text,gridcart.Rows[e.RowIndex].Cells[1].Text};
            DataRow row = tbl.Rows.Find(PK);
           if (row != null)
               row.Delete();
           Session["cart"] = tbl;
           RefereshData();
           


        }
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            RefereshData();
      
        
    }
    private void RefereshData()
        {
            gridcart.DataSource = (DataTable)Session["cart"];
            gridcart.DataBind();
            //double total = 0;
            int x = 0;
            for (x = 0; x < gridcart.Rows.Count; x++)
            

               // total += Convert.ToDouble(gridcart.Rows[x].Cells[5].Text);
                lbltotal.Text = "Total of order equal=" + ToString();
            

        }

    protected void gridcart_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gridcart.EditIndex = e.NewEditIndex;
        DataBind();
    }
    protected void gridcart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridcart.EditIndex = -1;
        DataBind();
    }
    protected void gridcart_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtQty = (TextBox)gridcart.Rows[e.RowIndex].Cells[4].Controls[0];
        if (Session["cart"]!= null)
        {
            DataTable tbl = (DataTable)Session["cart"];
            string[] PK = { gridcart.Rows[e.RowIndex].Cells[0].Text, gridcart.Rows[e.RowIndex].Cells[1].Text };
            DataRow row = tbl.Rows.Find(PK);
            row[4] = txtQty.Text;
            row[5] = Convert.ToInt16(txtQty.Text) * Convert.ToDouble(row[3]);
            
            Session["Cart"] = tbl;
            RefereshData();
            gridcart.EditIndex = -1;
            DataBind();
          //Responce.Redirect("")  
        }
    }
}