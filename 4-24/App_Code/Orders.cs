using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;

public class Orders : ControlingClass
{
    private int _orid;
    private DateTime _ordate;
    private string _shipname;
    private string _shipcity;
    private string _shiparea;
    private string _shipaddress;
    private string _member;
    private Orderdetails _ORDDETLS;
    public int orid
    {
        get
        {
            return _orid;
        }
        set
        { _orid = value; }
    }

    public DateTime ordate
    {
     get 
     { 
         return _ordate;
     }
     set
     { 
         _ordate = value;
     }
}   public string shipname
    {
        get
        {
            return _shipname;
        }
        set
        { _shipname = value; }
    }

    public string shipcity
    {
        get
        {
            return _shipcity;
        }
        set
        { _shipcity = value; }
    }

    public string shiparea
    {
        get
        {
            return _shiparea;
        }
        set
        { _shiparea = value; }
    }

    public string shipaddress
    {
        get
        {
            return _shipaddress;
        }
        set
        { _shipaddress = value; }
    }

    public string member
    {
        get
        {
            return _member;
        }
        set
        { _member = value; }

    }
    public global::Orderdetails ORDDETLS
    {
        get
        {
            return _ORDDETLS;
        }
        set
        { _ORDDETLS = value; }
    }


    protected override bool LoadSortedList(char OperationType)
    {
        SortedList SL = new SortedList();
        SL.Add("Check", OperationType);
        SL.Add("orid", orid);
        SL.Add("ordate", ordate);
        SL.Add("shipname", shipname);
        SL.Add("shipcity", shipcity);
        SL.Add("shiparea", shiparea);
        SL.Add("shipaddress", shipaddress);
        SL.Add("member", member);


        if (DB.RunProcrduer("OrderManager", SL) == 1)
        {
            return true;
        }
        else { return false; }
    }

    public bool modifymember(string member, int orid)
    {
        throw new System.NotImplementedException();
    }

    public bool modifyordate(int ordate, int orid)
    {
        throw new System.NotImplementedException();
    }

    public bool modifyshipname(string shipname, int orid)
    {
        throw new System.NotImplementedException();
    }

    public bool modifyshipcity(string shipcity, int orid)
    {
        throw new System.NotImplementedException();
    }

    public bool modifyshiparea(string shiparea, int orid)
    {
        throw new System.NotImplementedException();
    }

    public bool modifyshipaddress(string shipaddress, int orid)
    {
        throw new System.NotImplementedException();
    }

    public bool modifyshipaddress2(string shipcity, string shiparea, string shipaddress, int orid)
    {
        throw new System.NotImplementedException();
    }

    public int searchorderid(int orid)
    {
        throw new System.NotImplementedException();
    }

    public string searchordermember(string searchmember)
    {
        throw new System.NotImplementedException();
    }

    public string searchshipname(string shipname)
    {
        throw new System.NotImplementedException();
    }

    public string AddOr(DateTime ordate,string shipname, string shipcity,string shiparea, string shipaddress, string member)
    {
        this.ordate = ordate;
        this.shipname = shipname;
        this.shipcity = shipcity;
        this.shiparea = shiparea;
        this.shipaddress = shipaddress;
        this.member = member;
        

        if (Add() == true)
        {
            return "Success";
        }
        else { return "Failed"; }

    }

    public bool delete(int orid)
    {
        throw new System.NotImplementedException();
    }

    public int getnextorderno()
    {
        string query = "select max(Orid)+1 from Orders";
        try
        {
            return Convert.ToInt32(DB.RunQury(query).Rows[0][0].ToString());
        }
        catch
        {
            return 1;
        }
    }

    public bool AddOr()
    {
        throw new NotImplementedException();
    }
}
