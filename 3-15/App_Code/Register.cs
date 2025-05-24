using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;

public class Register : ControlingClass
{

    #region Field
    private string _FullName;
    private int _Password;
    private int _NationalId;
    private string _Email;
    private string _Address;
    private int _PhoneNo;

    #endregion

    #region Property

    public string FullName
    {
        get
        {
            return _FullName;
        }
        set
        {
            _FullName = value;
        }
    }

    public int Password
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

    public int NationalId
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

    public int PhoneNo
    {
        get
        {
            return _PhoneNo;
        }
        set
        {
            _PhoneNo = value;
        }
    }


    #endregion

    protected override bool LoadSortedList(char OperationType)
    {
        SortedList SL = new SortedList();
        SL.Add("Check", OperationType);
        SL.Add("FullName", FullName);
        SL.Add("Password", Password);
        SL.Add("NationalId", NationalId);
        SL.Add("Email", Email);
        SL.Add("Address", Address);
        SL.Add("PhonNo", PhoneNo);

        if (DB.RunProcrduer("RegisterManager", SL) == 1)
        {
            return true;
        }
        else { return false; }
    }
    public bool AddReg(string FullName, int Password, int NationalId, string Email, string Address, int PhoneNo)
    {
        throw new System.NotImplementedException();
    }

    public bool DeleteReg(int NationalId)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyName(int NationalId, string FullName)
    {
        throw new System.NotImplementedException();
    }

    public bool Modifyemail(int NationalId, string Email)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyAddress(int NationalId, string Address)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyNId(int NationalId, int NewNationalId)
    {
        throw new System.NotImplementedException();
    }

    public bool Modifypswrd(int NationalId, int Password)
    {
        throw new System.NotImplementedException();
    }

    public bool ModifyPhone(int NationalId, int PhoneNo)
    {
        throw new System.NotImplementedException();
    }

    public string SearchNm(string FullName)
    {
        throw new System.NotImplementedException();
    }

    public string SearchNId(int NationalId)
    {
        throw new System.NotImplementedException();
    }
}
