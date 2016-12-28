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
    public class FileController : Controller
    {
        // GET: File
        public async Task<ActionResult> DownloadFile(string ldo)
        {
            try
            {
                string token = new CookieManager().GetTokenFromCookie(HttpContext.ApplicationInstance.Context);
                if (!String.IsNullOrWhiteSpace(token) && !String.IsNullOrWhiteSpace(ldo))
                {
                    FileService service = new FileService();
                    var result = await service.Download(token, Request.UserHostAddress, ldo);
                    string fileName = String.Format("{0}.{1}", AppConfigManager.AttachmentName, result.FileExtension);

                    var cd = new System.Net.Mime.ContentDisposition
                    {
                        FileName = fileName,
                        Inline = false,
                    };

                    //MimeMapping.GetMimeMapping(fileName)

                    Response.AppendHeader("Content-Disposition", cd.ToString());
                    return File(result.Data, MimeMapping.GetMimeMapping(fileName), fileName);
                    //return File(result.Data, System.Net.Mime.MediaTypeNames.Application.Octet, fileName);
                }
                throw new Exception(AppConfigManager.BadRequest);
            }
            catch (Exception ex)
            {
                //new CookieManager().RemoveCookie(HttpContext.ApplicationInstance.Context);
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }
    }
}