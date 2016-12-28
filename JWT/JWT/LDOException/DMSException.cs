using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace DMSClassLibrary.DMSException
{
    class DMSException //: FilterAttribute, IExceptionFilter
    {
        //public void OnException(ExceptionContext filterContext)
        //{
        //    if (IsAjax(filterContext))
        //    {
        //        filterContext.Result = new JsonResult()
        //        {
        //            Data = false,
        //            JsonRequestBehavior = JsonRequestBehavior.AllowGet
        //        };

        //        filterContext.ExceptionHandled = true;
        //        filterContext.HttpContext.Response.Clear();
        //    }
        //    else
        //    {
        //        //WriteExceptionLogError exobj = new WriteExceptionLogError();

        //        base.OnException(filterContext);

        //    }
        //}

        //private bool IsAjax(ExceptionContext filterContext)
        //{
        //    return filterContext.HttpContext.Request.Headers["X-Requested-With"] == "XMLHttpRequest";
        //}
    }
}
