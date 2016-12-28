using JWT.Authorization;
using JWT.Managers;
using System;
using System.Reflection;
using System.Web;

namespace JWT.Helpers
{

    public class TokenHelper
    {
        public T GetToken<T>(HttpContext context)
        {
            //context.Response.AppendHeader("Access-Control-Allow-Origin", "https://localhost");
            //context.Response.AppendHeader("Access-Control-Allow-Credentials", "true");

            var obj = context.Request.Cookies[AppConfManager.CookieKey];

            if (obj != null)
                return JsonWebToken.DecodeToken<T>(obj.Value, AppConfManager.SecretAccessKey, true, true);

            throw new Exception(CodeHelper.UnableToGetToken);
        }

        public T GetToken<T>(string token)
        {
            //context.Response.AppendHeader("Access-Control-Allow-Origin", "https://localhost");
            //context.Response.AppendHeader("Access-Control-Allow-Credentials", "true");

            if (!String.IsNullOrWhiteSpace(token))
                return JsonWebToken.DecodeToken<T>(token, AppConfManager.SecretAccessKey, true, true);

            throw new Exception(CodeHelper.UnableToGetToken);
        }

        public T GetUserToken<T>(HttpContext context)
        {
            T userIdf = GetToken<T>(context);

            PropertyInfo ExpiryInfo = userIdf.GetType().GetProperty("Expiry");
            var date = ExpiryInfo.GetValue(userIdf);

            if (Convert.ToDateTime(date) < DateTime.Now)
                throw new Exception(CodeHelper.InvalidLoginToken);

            TokenInfo user = (TokenInfo)(object)userIdf;

            string token = JsonWebToken.Encode(new TokenInfo()
            {
                Idf = user.Idf,
                ImpersonateUserId = user.ImpersonateUserId,
                FullName = user.FullName,
                Expiry = DateTime.Now.AddMinutes(AppConfManager.KeepAliveTime)
            }, AppConfManager.SecretAccessKey, HvHashAlgorithm.RS256);
            context.Response.SetCookie(new HttpCookie(AppConfManager.CookieKey, token));

            return userIdf;
        }

        public T GetUserToken<T>(string token)
        {
            T userToken = GetToken<T>(token);
            return userToken;
        }

    }
}
