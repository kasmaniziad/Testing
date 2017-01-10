using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OL_Delivery.Controllers
{
    public class DeliveryController : Controller
    {
        // GET: Delivery
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ReceiveOrder()
        {
            return View();
        }
    }
}