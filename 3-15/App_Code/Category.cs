using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;

public class Category : ControlingClass
{
    #region Field

    private int _CatId;
    private string _CatName;
    private string _CatDescription;

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
        SL.Add("catid", CatId);
        SL.Add("catname", CatName);
        SL.Add("catdescriptionn", CatDescription);

        if (DB.RunProcrduer("CategoryManager", SL) == 1)
        {
            return true;
        }
        else { return false; }
    }
    public bool Add(string CatName, string CatDescription)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyCN(int CatId, string CatName)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyCD(int CatId, string CatDescription)
    {
        throw new System.NotImplementedException();
    }

    public bool Delete(int CatId)
    {
        throw new System.NotImplementedException();
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
