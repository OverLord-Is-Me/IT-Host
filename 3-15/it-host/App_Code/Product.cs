using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Collections;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product : ControlingClass
{
    #region Field

    private int _CatId;
    private int _ProId;
    private string _ProName;
    private string _ProPrice;
    private string _Avqty;
    private string _WritingData;
    private string _ProDetails;


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

    public string ProPrice
    {
        get
        {
            return _ProPrice;
        }
        set
        { _ProPrice = value; }

    }

    public string Avqty
    {
        get
        {
            return _Avqty;
        }
        set
        { _Avqty = value; }

    }

    public string WritingData
    {
        get
        {
            return _WritingData;
        }
        set
        { _WritingData = value; }

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

    #endregion

    protected override bool LoadSortedList(char OperationType)
    {
        SortedList SL = new SortedList();
        SL.Add("Check", OperationType);
        SL.Add("catid", CatId);
        SL.Add("proid", ProId);
        SL.Add("proname", ProName);
        SL.Add("proprice", ProPrice);
        SL.Add("avqty", Avqty);
        SL.Add("writingdata", WritingData);
        SL.Add("prodetails", ProDetails);

        if (DB.RunProcrduer("ProductManager", SL) == 1)
        {
            return true;
        }
        else { return false; }
    }


    public bool Add(string ProName, string ProPrice, string Avqty, string WritingData, string ProDetalis)
    {
        throw new System.NotImplementedException();
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

    public bool Delete(string ProId)
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
}