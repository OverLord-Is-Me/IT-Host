using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;

/// <summary>
/// Summary description for Cart
/// </summary>
public class Cart : ControlingClass
{
    private string _Cardtype;

    public string Cardtype
    {
        get { return _Cardtype; }
        set { _Cardtype = value; }
    }
    private string _cardnumber;

    public string Cardnumber
    {
        get { return _cardnumber; }
        set { _cardnumber = value; }
    }
    private int _month;

    public int Month
    {
        get { return _month; }
        set { _month = value; }
    }
    private int _year;

    public int Year
    {
        get { return _year; }
        set { _year = value; }
    }
    private string _Nameincard;

    public string Nameincard
    {
        get { return _Nameincard; }
        set { _Nameincard = value; }
    }
    private string _Fullname;

    public string Fullname
    {
        get { return _Fullname; }
        set { _Fullname = value; }
    }

    public Cart()
    {

    }
     protected override bool LoadSortedList(char OperationType)
    {
        SortedList SL = new SortedList();
        SL.Add("Check", OperationType);       
        SL.Add("Cardtype", Cardtype);
        SL.Add("Cardnumber", Cardnumber);
        SL.Add("month", Month);
        SL.Add("year", Year);
        SL.Add("Nameincard", Nameincard);
        SL.Add("FullName", Fullname);
        if (DB.RunProcrduer("ManageCart", SL) == 1)
        {
            return true;
        }
        else { return false; }
          
     }

     public bool Add()
     {
         throw new System.NotImplementedException();
     }

     public void update()
     {
         throw new NotImplementedException();
     }
}