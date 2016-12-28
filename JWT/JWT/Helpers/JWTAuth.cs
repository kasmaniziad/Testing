using JWT.Authorization;
using System;
using System.Web;

namespace JWT.Helpers
{
    public class JWTAuth
    {
        public TokenInfo ValidateUser(HttpContext context)
        {
            try
            {
                var token = new TokenHelper().GetUserToken<TokenInfo>(context);
                return token;
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}
