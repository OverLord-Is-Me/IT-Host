using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;
using System.Data;

public class Register : ControlingClass
{

    #region Field
    private string _FullName;
    private string _Password;
    private string _NationalId;
    private string _Email;
    private string _Address;
    private string _PhoneNo;

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

    public String Password
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

    public string NationalId
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

    public string PhoneNo
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


    public string AddReg(string FullName, string Password, string NationalId, string Email, string Address, string PhoneNo)
    {
        this.FullName = FullName;       this.Password = Password;
        this.NationalId = NationalId;   this.Email = Email;
        this.Address=Address;           this.PhoneNo = PhoneNo;
       
        if (Add() == true)
        {
            return "Success";
        }
        else { return "Failed"; }
       

    }

    public bool Login(string FullName,string Password)
    {
        string Log = string.Format("select * from Register where FullName='{0}' and Password='{1}'", FullName,Password);
        if(Search(Log).Rows.Count==1)
        { return true; }
       else return false;
       
    }

    public string DeleteReg(string NationalId)
    {
        this.NationalId = NationalId;
        if (Delete() == true)
        {
            return "Success";
        }
        else { return "Failed"; }
       

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

    public DataTable Search(string FullName, string Password)
    {

        string query = string.Format("select * From Register Where {0} like'%{1}%' ", FullName, Password);
        return Search(query);
    }
}
