using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZWeb.Helper
{
    public class CookieManager
    {
        public void SetCookie(HttpContext context, string value)
        {
            var cookie = new HttpCookie(AppConfigManager.CookieKey, value);
            cookie.Expires = DateTime.Now.AddHours(1);
            context.Response.Headers.Remove(AppConfigManager.ServerHeader);
            context.Response.SetCookie(cookie);
        }

        public void RemoveCookie(HttpContext context)
        {
            var cookie = new HttpCookie(AppConfigManager.CookieKey, String.Empty);
            cookie.Expires = DateTime.Now.AddHours(-1);
            context.Response.SetCookie(cookie);
        }

        public string GetTokenFromCookie(HttpContext context)
        {
            var obj = context.Request.Cookies[AppConfigManager.CookieKey];
            if (obj != null)
                return obj.Value;
            else
                throw new Exception(AppConfigManager.CookieNotFound);
                
        }
    }
}