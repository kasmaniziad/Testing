using System.Web.Mvc;

namespace OnlineOrdering.Areas.OL_Delivery
{
    public class OL_DeliveryAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "OL_Delivery";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            if (context.Routes["OL_Delivery_default"] == null)
            {
                    context.MapRoute(
                    "OL_Delivery_default",
                    "OL_Delivery/{controller}/{action}/{id}",
                    new { action = "Index", id = UrlParameter.Optional },
                    new string[] { "OL_Delivery.Controllers" }
                );
            }
        }
    }
}