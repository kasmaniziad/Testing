using ZWeb.ExceptionFilters;
using ZWeb.Helper;
using ZWeb.REST;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;

namespace ZWeb.Controllers
{
    public class HomeController : Controller
    {
        [OnlineOrderingExceptionFilter]
        public async Task<ActionResult> UserProfile()
        {
            string token = new CookieManager().GetTokenFromCookie(HttpContext.ApplicationInstance.Context);
            if (!String.IsNullOrWhiteSpace(token))
            {
                OrderService service = new OrderService();
                var result = await service.GetSiteList(token, Request.UserHostAddress);
                new CookieManager().SetCookie(HttpContext.ApplicationInstance.Context, result.Item4);
                return View(new Tuple<List<SiteInfo>, List<OOShiftInfo>, bool>(result.Item1, result.Item2, result.Item3));
            }

            throw new Exception(AppConfigManager.BadRequest);
        }

        public ActionResult WaitTemplate()
        {
            return View();
        }

        public async Task<ActionResult> Manage()
        {
            try
            {
                string token = new CookieManager().GetTokenFromCookie(HttpContext.ApplicationInstance.Context);
                if (!String.IsNullOrWhiteSpace(token))
                {
                    OrderService service = new OrderService();
                    var result = await service.GetSiteList(token, Request.UserHostAddress);
                    new CookieManager().SetCookie(HttpContext.ApplicationInstance.Context, result.Item4);
                    return View(new Tuple<List<SiteInfo>, List<OOShiftInfo>>(result.Item1, result.Item2));
                }

                throw new Exception(AppConfigManager.BadRequest);
            }
            catch (Exception ex)
            {
                new CookieManager().RemoveCookie(HttpContext.ApplicationInstance.Context);
                throw new HttpResponseException(new HttpResponseMessage(HttpStatusCode.BadRequest));
            }
        }

        public async Task<JsonResult> GetProductsBySiteNumber(int siteNumber)
        {
            try
            {
                string token = new CookieManager().GetTokenFromCookie(HttpContext.ApplicationInstance.Context);
                if (!String.IsNullOrWhiteSpace(token))
                {
                    OrderService service = new OrderService();
                    var result = await service.GetProductList(token, Request.UserHostAddress, siteNumber);
                    new CookieManager().SetCookie(HttpContext.ApplicationInstance.Context, result.Item2);
                    return Json(result.Item1, JsonRequestBehavior.AllowGet);
                }

                throw new Exception(AppConfigManager.BadRequest);
            }
            catch (Exception ex)
            {
                new CookieManager().RemoveCookie(HttpContext.ApplicationInstance.Context);
                throw new HttpResponseException(new HttpResponseMessage(HttpStatusCode.BadRequest));
            }

        }

        public async Task<JsonResult> PlaceOrder(OrderInfo info)
        {
            try
            {
                string token = new CookieManager().GetTokenFromCookie(HttpContext.ApplicationInstance.Context);
                if (!String.IsNullOrWhiteSpace(token) && info.RequestedOn.Date >= DateTime.Now.Date)
                {
                    OrderService service = new OrderService();
                    var result = await service.PlaceOrder(token, Request.UserHostAddress, info);
                    new CookieManager().SetCookie(HttpContext.ApplicationInstance.Context, result.Item2);
                    return Json(result.Item1, JsonRequestBehavior.AllowGet);
                }

                throw new Exception(AppConfigManager.BadRequest);
            }
            catch (Exception ex)
            {
                new CookieManager().RemoveCookie(HttpContext.ApplicationInstance.Context);
                throw new HttpResponseException(new HttpResponseMessage(HttpStatusCode.BadRequest));
            }

        }
    }
}