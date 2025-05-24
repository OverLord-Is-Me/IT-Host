using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Collections;
using System.Data;

public class Product : ControlingClass
{

    #region Field

    private int _CatId;
    private int _ProId;
    private string _ProName;
    private int _ProPrice;
    private int _Avqty;
    private DateTime _WritingData;
    private string _ProDetails;

    private Product _PRO;


    #endregion

    #region Property

    public int CatId
    {
        get
        {
            return _CatId;

        }
        set
        { _CatId = value; }

    }

    public int ProId
    {
        get
        {
            return _ProId;
        }
        set
        { _ProId = value; }

    }

    public string ProName
    {
        get
        {
            return _ProName;
        }
        set
        { _ProName = value; }

    }

    public int ProPrice
    {
        get
        {
            return _ProPrice;
        }
        set
        { _ProPrice = value; }

    }

    public int Avqty
    {
        get
        {
            return _Avqty;
        }
        set
        { _Avqty = value; }

    }

    public DateTime WritingData
    {
        get
        {
            return DateTime.Now;
        }

    }

    public string ProDetails
    {
        get
        {
            return _ProDetails;
        }
        set
        { _ProDetails = value; }

    }

    public Product PRO
    {
        get
        {
            return  _PRO;
        }
        set
        { _PRO = value; }
    }

    #endregion

    protected override bool LoadSortedList(char OperationType)
    {
        SortedList SL = new SortedList();
        SL.Add("Check", OperationType);
        SL.Add("CatId", CatId);
        SL.Add("ProId", ProId);
        SL.Add("ProName", ProName);
        SL.Add("ProPrice", ProPrice);
        SL.Add("Avqty", Avqty);
        SL.Add("WritingData", WritingData);
        SL.Add("ProDetails", ProDetails);

        if (DB.RunProcrduer("ProductManager", SL) == 1)
        {
            return true;
        }
        else { return false; }
    }

     //DateTime WritingData,
    public string AddPro(int CatId, string ProName, int ProPrice, int Avqty, string ProDetails)
    {
        this.CatId = CatId; this.ProName = ProName; this.ProPrice = ProPrice;
        this.Avqty = Avqty;
        this.ProDetails = ProDetails;

        if (Add() == true)
        {
            return "Success";
        }
        else { return "Failed"; }
       
        
    }

    public bool ModifyPN(string ProId, string ProName)
    {
        throw new System.NotImplementedException();
    }
    public bool ModifyPP(string ProId, string ProPrice)
    {
        throw new System.NotImplementedException();
    }
    public bool ModifyPA(string ProId, string Avqty)
    {
        throw new System.NotImplementedException();
    }
    public bool ModifyPW(string ProId, string WritingData)
    {
        throw new System.NotImplementedException();
    }
    public bool ModifyPD(string ProId, string ProDetalis)
    {
        throw new System.NotImplementedException();
    }
    public string SearchPI(string ProId)
    {
        throw new System.NotImplementedException();
    }
    public string SearchPN(string ProName)
    {
        throw new System.NotImplementedException();
    }







    public string DeleteProd(int ProId)
    {
        this.ProId = ProId;
        if (Delete() == true)
        {
            return "Success";
        }
        else { return "Failed"; }


    }
    public DataTable Search(string FullName, string Password)
    {
        string query = string.Format("select * From Product Where {0} like'%{1}%' ", FullName, Password);
        return Search(query);
    }



    public DataTable SearchProd(string Field, string Value)
    {
        string query = string.Format("select CatId,ProId,ProName,ProPrice,Avqty,WritingData,ProDetails From Product Where {0} like'%{1}%' ", Field, Value);
        return SearchProd(query);
    }

    public DataTable SearchProd(string query)
    {
        try
        {
            return DB.RunQury(query);
        }
        catch { return new DataTable(); }

    }

    public string Update()
    {
        throw new NotImplementedException();
    }

    public string getProid()
    {
        string query = "select Max(ProId)+1 from Product";
        return SearchProd(query).Rows[0][0].ToString();
    }


    public bool find(string Catid,string Proid)
    {
        string qury =String.Format("select*from product where Catid='{0}'andProid='{1}'",Catid,ProId);
          DataTable lbl= Search(qury);
          if (lbl.Rows.Count == 0)
              return false;
          else
          {
              this._CatId= Convert.ToInt32( lbl.Rows[0][0].ToString());
              this._ProId = Convert.ToInt32( lbl.Rows[0][1].ToString());
              this._ProName = lbl.Rows[0][2].ToString();
              this._ProPrice =Convert.ToInt32 (lbl.Rows[0][3].ToString());
              this._Avqty = Convert.ToInt32( lbl.Rows[0][4].ToString());
              //this._WritingData=tbl
              this._ProDetails = lbl.Rows[0][6].ToString();
             return true;
          }
    }
}
