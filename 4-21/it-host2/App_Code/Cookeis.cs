using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cookeis
/// </summary>
public class Cookeis
{
    public static void createCookie(string cookiename, string[] keys, string[] values, bool expired,HttpResponse res){
        HttpCookie c = new HttpCookie(cookiename);
        if (keys != null)
        {
            for (int x = 0; x < keys.Length; x++)
                c.Values.Add(keys[x], values[x]);
            if (!expired)
                c.Expires = DateTime.Now.AddYears(5);
            else
                c.Expires = DateTime.Now.AddYears(-5);
                res.Cookies.Add(c);
        }
    }
    public static string readcookie(string cookiename, string keys, HttpRequest req)
    {
        try
        {
            return req.Cookies[cookiename][keys].ToString();
        }
            catch
        {
                return null;
        }
    }

    public static void removecookie(string cookiename, HttpResponse res)
    {
        createCookie(cookiename, null, null, false, res);
    }
}