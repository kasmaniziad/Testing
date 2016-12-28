using ZWeb.Helper;
using ZWeb.REST;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace ZWeb.Controllers
{
    public class OrderingController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult OrderPlaced()
        {
            return View();
        }

        public ActionResult Confirm()
        {
            return View();
        }

        public ActionResult ConfirmDismiss()
        {
            return View();
        }

        public ActionResult ConfirmSubmit()
        {
            return View();
        }

        public ActionResult NewOrder()
        {
            return View();
        }

        public ActionResult ChangeOrder()
        {
            return View();
        }

        public ActionResult Reports()
        {
            return View();
        }

        public ActionResult Circular()
        {
            return View();
        }

        public ActionResult Notifications()
        {
            return View();
        }

        public ActionResult NotificationDetail()
        {
            return View();
        }

        public async Task<JsonResult> GetSiteOrderList()
        {
            try
            {
                string token = new CookieManager().GetTokenFromCookie(HttpContext.ApplicationInstance.Context);
                if (!String.IsNullOrWhiteSpace(token))
                {
                    OrderingService service = new OrderingService();
                    var result = await service.GetSiteOrderList(token, Request.UserHostAddress);
                    new CookieManager().SetCookie(HttpContext.ApplicationInstance.Context, result.Item4);
                    //return Json(new Tuple<List<DayInfo>, dynamic, string>(result.Item1, result.Item2, result.Item3), JsonRequestBehavior.AllowGet);
                    return null;
                }
                throw new Exception(AppConfigManager.BadRequest);
            }
            catch (Exception ex)
            {
                //new CookieManager().RemoveCookie(HttpContext.ApplicationInstance.Context);
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }

        public async Task<JsonResult> SaveNewOrder(List<OONewOrderInfo> orders, DateTime date, bool hasAgreed)
        {
            try
            {
                if (hasAgreed)
                {
                    string token = new CookieManager().GetTokenFromCookie(HttpContext.ApplicationInstance.Context);
                    if (!String.IsNullOrWhiteSpace(token))
                    {
                        OrderingService service = new OrderingService();
                        var result = await service.SaveNewOrder(orders, date, token, Request.UserHostAddress);
                        new CookieManager().SetCookie(HttpContext.ApplicationInstance.Context, result.Item2);
                        return Json(new Tuple<bool, string>(result.Item1, result.Item2), JsonRequestBehavior.AllowGet);
                    }
                }
                throw new Exception(AppConfigManager.BadRequest);
            }
            catch (Exception ex)
            {
                //new CookieManager().RemoveCookie(HttpContext.ApplicationInstance.Context);
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }
       
        public ActionResult ContactUs()
        {
            return View();
        }

        public ActionResult FAQ()
        {
            return View();
        }



    }




}