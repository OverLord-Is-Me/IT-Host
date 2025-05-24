using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



public class Utllty
{
	
        public static void CreateCookie(string CookieName,string [] Keys,string [] Values ,bool Expired,HttpResponse res)
        {
            HttpCookie c = new HttpCookie(CookieName);
            if(Keys!=null)
            {
            for (int x = 0; x < Keys.Length; x++)
                c.Values.Add(Keys[x], Values[x]); 
            if (!Expired)
                c.Expires = DateTime.Now.AddYears(5); 
            }else    
                c.Expires = DateTime.Now.AddYears(-5);
             res.Cookies.Add(c);

        }

        public static string ReadFromCookie(string CookieName, string Key, HttpRequest req)
        {
            try
            {
                return req.Cookies[CookieName][Key].ToString();
            }
            catch
            {
                return null;
            }
        }

        public static void RemoveCookie(string CookieName, HttpResponse res)
        {
            CreateCookie(CookieName,null,null,false,res);
        }
      
	
}