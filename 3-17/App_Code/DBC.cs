using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections;
public class DBC
{
    SqlConnection conn;
    SqlCommand cmd;
    private void RunDB(CommandType DBC,string OperationText)
    {
        //Decler
        conn = new SqlConnection();
        cmd = new SqlCommand();

        //Requirment
        conn.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString();
        cmd.Connection = conn;
        cmd.CommandType = DBC;
        cmd.CommandText = OperationText;
        conn.Open();
    }
    private int INUPDE()
    {
        try
        {
            int x = cmd.ExecuteNonQuery();
            conn.Close();
            return x;
        }
        catch (SqlException ex)
        {
            conn.Close();
            return ex.Number;
        }
    }
    public int RunUpdate(string InsDeIUpd)
    {
        RunDB(CommandType.Text, InsDeIUpd);
        return INUPDE();
    }
    public int RunProcrduer(string OperationName ,SortedList Var)
    {
        RunDB(CommandType.StoredProcedure,OperationName);
        for(int x=0;x<Var.Count;x++)
        {
            cmd.Parameters.AddWithValue(Convert.ToString( Var.GetKey(x)),Convert.ToString( Var.GetByIndex(x)));
        }
        return INUPDE();
    }
    public DataTable RunQury(string search)
    {
        RunDB(CommandType.Text,search);
        DataTable tbl = new DataTable();
        tbl.Load(cmd.ExecuteReader());
        conn.Close();
        return tbl;
    }
    

    

}