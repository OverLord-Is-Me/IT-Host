using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;
using System.Data;

public class Driver : ControlingClass
{
    #region Field
    private int _ID;
    private string _Name;
    private string _password;
    private double _NationalId;
    private string _Address;
    private string _email;
    private double _PhoneNumber;
    private Orders _ORD;

    #endregion


    #region Property


    public int ID
    {
        get
        {
            return _ID;
        }
        set
        {
            _ID = value;
        }
    }

    public string Name
    {
        get
        {
            return _Name;
        }
        set
        {
            _Name = value;
        }
    }

    public double NationalId
    {
        get
        {
            return _NationalId;
        }
        set
        {
            _NationalId = value;
        }
    }

    public string password
    {
        get
        {
            return _password;
        }
        set
        {
            _password = value;
        }
    }

    public string Address
    {
        get
        {
            return _Address;
        }
        set
        {
            _Address = value;
        }
    }

    public string email
    {
        get
        {
            return _email;
        }
        set
        {
            _email = value;
        }
    }

    public double PhoneNumber
    {
        get
        {
            return _PhoneNumber;
        }
        set
        {
            _PhoneNumber = value;
        }
    }

    public global::Orders ORD
    {
        get
        {
            return _ORD;
        }
        set
        { _ORD = value; }
    }
    #endregion

    protected override bool LoadSortedList(char OperationType)
    {
        SortedList SL = new SortedList();
        SL.Add("Check", OperationType);
        SL.Add("ID", ID);
        SL.Add("Name", Name);
        SL.Add("password", password);
        SL.Add("NationalId", NationalId);
        SL.Add("Address", Address);
        SL.Add("email", email);
        SL.Add("PhoneNumber", PhoneNumber);

        if (DB.RunProcrduer("DriverManager", SL) == 1)
        {
            return true;
        }
        else { return false; }
    }



    public string AddDr(string Name, string password, double NationalId, string Address, string email, double PhoneNumber)
    {
        this.Name = Name; this.password = password;
        this.NationalId = NationalId;
        this.Address = Address; this.email = email;
        this.PhoneNumber = PhoneNumber;

        if (Add() == true)
        {
            return "Success";
        }
        else { return "Failed"; }

    }

    public string updateDriver(string password, string Address, string email, double PhoneNumber)
    {
        this.password = password;
        this.Address = Address; 
        this.email = email;
        this.PhoneNumber = PhoneNumber;

        if (Modify() == true)
        {
            return "Success";
        }
        else { return "Failed"; }
    }
    public bool Login(string Name, string Password)
    {
        string Log = string.Format("select * from Driver where Name='{0}' and Password='{1}'", Name, Password);
        if (Search(Log).Rows.Count == 1)
        { return true; }
        else return false;

    }

    public string DeleteDr(int ID, string Name, double NationalId)
    {
        this.ID = ID; this.Name = Name;
        this.NationalId = NationalId;
        if (Delete() == true)
        {
            return "Success";
        }
        else { return "Failed"; }
    }

    public bool ModifyDrNm(int ID, double NationalId, string Name, string NewName)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyDradrs(int ID, double NationalId, string Name, string Address)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyDremail(int ID, string NationalId, string Name, string Email)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyDrNaID(int ID, double NationalId, string Name, Double NewNationalId)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyDrPassword(int ID, double NationalId, string Name, string Password)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyDrPhone(int ID, double NationalId, string Name, double PhoneNumber)
    {
        throw new System.NotImplementedException();
    }

    public string SearchDrId(int Id)
    {
        throw new System.NotImplementedException();
    }

    public string SearchDrNaID(double NationalId)
    {
        throw new System.NotImplementedException();
    }

    public string SearchDrNm(string Name)
    {
        throw new System.NotImplementedException();
    }

    public DataTable Search(string Name, string Password)
    {
        string query = string.Format("select * From Driver Where {0} like'%{1}%'", Name, Password);
        return Search(query);
    }



    public DataTable SearchDriver(string Field, string Value)
    {
        string query = string.Format("select * From Driver Where {0} like'%{1}%'", Field, Value);
        return SearchDriver(query);
    }

    public DataTable SearchDriver(string query)
    {
        try
        {
            return DB.RunQury(query);
        }
        catch { return new DataTable(); }

    }

    public string getDriverid()
    {
        string query = "select Max(ID)+1 from Driver";
        return SearchDriver(query).Rows[0][0].ToString();
    }


}
