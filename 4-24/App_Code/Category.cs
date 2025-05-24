using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;
using System.Data;

 public class Category : ControlingClass
{
    #region Field

    private int _CatId;
    private string _CatName;
    private string _CatDescription;
    private Product _PRO;

    #endregion


    #region Property
    public  Product PRO
    {
        get
        {
            return _PRO;
        }
        set
        { _PRO = value; }

    }

    public int CatId
    {
        get
        {
            return _CatId;
        }
        set
        { _CatId = value; }

    }

    public string CatName
    {
        get
        {
            return _CatName;
        }
        set
        {
            _CatName = value;
        }
    }

    public string CatDescription
    {
        get
        {
            return _CatDescription;
        }
        set
        {
            _CatDescription = value;
        }
    }

    #endregion

    protected override bool LoadSortedList(char OperationType)
    {
        SortedList SL=new SortedList();
        SL.Add("Check",OperationType);
        SL.Add("CatId", CatId);
        SL.Add("CatName", CatName);
        SL.Add("CatDescription", CatDescription);

        if (DB.RunProcrduer("CategoryManager", SL) == 1)
        {
            return true;
        }
        else { return false; }
    }
    public string AddCat(string CatName, string CatDescription)
    {
        this.CatName = CatName;
        this.CatDescription = CatDescription;
     
        if (Add() == true)
        {
            return "Success";
        }
        else { return "Failed"; }


    }
    public bool ModifyCN(int CatId, string CatName)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyCD(int CatId, string CatDescription)
    {
        throw new System.NotImplementedException();
    }
    public string DeleteCat(string CatName)
    {
        this.CatName = CatName;
        if (Delete() == true)
        {
            return "Success";
        }
        else { return "Failed"; }


    }
    public DataTable Search(string FullName, string Password)
    {
        string query = string.Format("select * From Category Where {0} like'%{1}%' ", FullName, Password);
        return Search(query);
    }



    public DataTable SearchCat(string Field, string Value)
    {
        string query = string.Format("select CatId,CatName,CatDescription From Category Where {0} like'%{1}%' ", Field, Value);
        return SearchCat(query);
    }

    public DataTable SearchCat(string query)
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

    public string getcatid()
    {
        string query = "select Max(CatId)+1 from Category";
        return SearchCat(query).Rows[0][0].ToString();
    }

    public String SearchCI(int CatId)
    {
        throw new System.NotImplementedException();
    }

    public string SearchCN(string CatName)
    {
        throw new System.NotImplementedException();
    }


}