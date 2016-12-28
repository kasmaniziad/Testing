using ZWeb.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace ZWeb.ExceptionFilters
{
    public class OnlineOrderingExceptionFilter : FilterAttribute, IExceptionFilter
    {
        public void OnException(ExceptionContext filterContext)
        {
            filterContext.ExceptionHandled = true;
            RedirectResult result;

            if (filterContext.Exception.Message.Equals(AppConfigManager.AcceptTerms))
                result = new RedirectResult("~/Login/TermsAndConditions");
            else
            {
                //new CookieManager().RemoveCookie(HttpContext.ApplicationInstance.Context);
                result = new RedirectResult("~/Login/Default");
            }

            filterContext.Result = result;

        }


    }
}