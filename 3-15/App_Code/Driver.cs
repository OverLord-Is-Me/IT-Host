using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;

public class Driver : ControlingClass
{
    #region Field
    private int _ID;
    private string _Name;
    private double _Password;
    private double _NationalId;
    private string _Address;
    private string _Email;
    private double _PhoneNumber;

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

    public double Password
    {
        get
        {
            return _Password;
        }
        set
        {
            _Password = value;
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

    public string Email
    {
        get
        {
            return _Email;
        }
        set
        {
            _Email = value;
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
    #endregion

    protected override bool LoadSortedList(char OperationType)
    {
        SortedList SL = new SortedList();
        SL.Add("Check", OperationType);
        SL.Add("ID", ID);
        SL.Add("Name", Name);
        SL.Add("password", Password);
        SL.Add("NationalId", NationalId);
        SL.Add("Address", Address);
        SL.Add("email", Email);
        SL.Add("PhonNumber", PhoneNumber);

        if (DB.RunProcrduer("DriverManager", SL) == 1)
        {
            return true;
        }
        else { return false; }
    }



    public bool AddDr(string Name, string Password, double NationalId, string Address, string Email, double PhoneNumber)
    {
        throw new System.NotImplementedException();
    }

    public bool DeleteDr(int ID, string Name, double NationalId)
    {
        throw new System.NotImplementedException();
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
}
