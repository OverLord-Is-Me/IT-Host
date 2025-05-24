using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data;

public abstract class ControlingClass
{
    protected DBC DB = new DBC();

    protected virtual bool LoadSortedList(char OperationType)
    {
        return false;
    }
    protected bool Add()
    {
        return LoadSortedList('a');
    }
    protected bool Modify()
    {
        return LoadSortedList('m');
    }
    protected bool Delete()
    {
        return LoadSortedList('d');
    }
    protected DataTable Search(string Searchtext)
    {
        try
        {
            return DB.RunQury(Searchtext);
        }
        catch
        {
            return new DataTable();
        }
    }
}