using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;

public class Orderdetails : ControlingClass
{
    #region Field
    private int _CatId;
    private int _ProId;
    private int _Ordid;
    private int _Qty;
    private int _SellPrice;

    #endregion
    #region Property
    public int CatId
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

    public int ProId
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

    public int Ordid
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

    public int Qty
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

    public int SellPrice
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
        SL.Add("catid", CatId);
        SL.Add("proid", ProId);
        SL.Add("ordid", Ordid);
        SL.Add("qty", Qty);
        SL.Add("sellprice", SellPrice);


        if (DB.RunProcrduer("OrderDetilesManager", SL) == 1)
        {
            return true;
        }
        else { return false; }
    }



    public bool AddOrdDt(int Qty, int SellPrice)
    {
        throw new System.NotImplementedException();
    }

    public bool DeleteOrdDt(int Ordid)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyQty(int Ordid, int Qty)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifySellPrice(int Ordid, int SellPrice)
    {
        throw new System.NotImplementedException();
    }

    public bool SearchCatId(int CatId)
    {
        throw new System.NotImplementedException();
    }

    public bool SearchOrdid(int Ordid)
    {
        throw new System.NotImplementedException();
    }

    public bool SearchProId(int ProId)
    {
        throw new System.NotImplementedException();
    }
}
