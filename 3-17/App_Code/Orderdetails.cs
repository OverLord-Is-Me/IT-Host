using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;

public class Orderdetails : ControlingClass
{
    #region Field
    private string _CatId;
    private string _ProId;
    private string _Ordid;
    private string _Qty;
    private string _SellPrice;

    #endregion
    #region Property
    public string CatId
    {
        get
        {
            return _CatId;
        }
        set
        {
            _CatId = value;
        }
    }

    public string ProId
    {
        get
        {
            return _ProId;
        }
        set
        {
            _ProId = value;
        }
    }

    public string Ordid
    {
        get
        {
            return _Ordid;
        }
        set
        {
            _Ordid = value;
        }
    }

    public string Qty
    {
        get
        {
            return _Qty;
        }
        set
        {
            _Qty = value;
        }
    }

    public string SellPrice
    {
        get
        {
            return _SellPrice;
        }
        set
        {
            _SellPrice = value;
        }
    }
    #endregion

    protected override bool LoadSortedList(char OperationType)
    {
        SortedList SL = new SortedList();
        SL.Add("Check", OperationType);
        SL.Add("Catid", CatId);
        SL.Add("Proid", ProId);
        SL.Add("Ordid", Ordid);
        SL.Add("Qty", Qty);
        SL.Add("Sellprice", SellPrice);


        if (DB.RunProcrduer("OrderDetilesManager", SL) == 1)
        {
            return true;
        }
        else { return false; }
    }



    public string AddOrdDt(string CatId, string ProId, string Ordid, string Qty, string SellPrice)
    {
        this.CatId = CatId; this.ProId = ProId; this.Ordid = Ordid;
        this.Qty = Qty; this.SellPrice = SellPrice;

        if (Add() == true)
        {
            return "Success";
        }
        else { return "Failed"; }
    }

    public bool DeleteOrdDt(string Ordid)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyQty(string Ordid, string Qty)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifySellPrice(string Ordid, string SellPrice)
    {
        throw new System.NotImplementedException();
    }

    public bool SearchCatId(string CatId)
    {
        throw new System.NotImplementedException();
    }

    public bool SearchOrdid(string Ordid)
    {
        throw new System.NotImplementedException();
    }

    public bool SearchProId(string ProId)
    {
        throw new System.NotImplementedException();
    }
}
