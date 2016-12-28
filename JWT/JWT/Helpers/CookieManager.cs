using JWT.Managers;
using System;
using System.Web;

namespace JWT.Helpers
{
    public class CookieManager
    {
        public void SetCookie(HttpContext context, string token)
        {
            context.Response.SetCookie(new HttpCookie(AppConfManager.CookieKey, token) { Path = "/", Secure = false, Expires = DateTime.Now.AddDays(30) });
        }

        public void RemoveCookie(HttpContext context, string token)
        {
            context.Response.SetCookie(new HttpCookie(AppConfManager.CookieKey, token) { Path = "/", Secure = false, Expires = DateTime.Now.AddDays(-1) });
        }
    }
}
