using JWT.Authorization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JWT.Helpers
{
    public class DMSAuthorize //: AuthorizeAttribute
    {

        // **Setting and authorizing token Begin**

        //var token = new JWTAuth().ValidateUser(HttpContext.Current);
        //string token = JsonWebToken.Encode(new TokenInfo() { Idf = user.UId, FullName = user.FullName, Expiry = DateTime.Now.AddMinutes(AppConfManager.KeepAliveTime) }, AppConfManager.SecretAccessKey, HvHashAlgorithm.RS256);

        //new CookieManager().SetCookie(HttpContext.ApplicationInstance.Context, token);

        // **Setting and authorizing token End**


        //    public string ModuleId { get; set; }
        //    public string ActionId { get; set; }
        //    public bool IsLandingPage { get; set; }
        //    public bool IsFile { get; set; }

        //    public override void OnAuthorization(AuthorizationContext filterContext)
        //    {
        //        var token = new JWTAuth().ValidateUser(HttpContext.Current);
        //        if (token != null)
        //        {
        //            int idf = token.ImpersonateUserId != null ? (int)token.ImpersonateUserId : token.Idf;
        //            SetMenus_V1(idf, token);
        //            if (token.UserRole == null)
        //                CustomRedirect(filterContext);
        //            else
        //            {
        //                bool found = false;
        //                if (!String.IsNullOrWhiteSpace(ModuleId))
        //                {
        //                    token.FlatAccess.ForEach(x =>
        //                    {
        //                        if (ModuleId.Equals(x.ModuleId) && (String.IsNullOrEmpty(ActionId) || ActionId.Equals(x.ActionId)))
        //                        {
        //                            found = true;
        //                            filterContext.Controller.ViewBag.FullName = token.FullName;
        //                            filterContext.Controller.ViewBag.UserRole = token.UserRole;
        //                            filterContext.Controller.ViewBag.FlatAccess = token.FlatAccess;
        //                            filterContext.Controller.ViewBag.UserId = token.Idf;
        //                        }
        //                    });
        //                }
        //                else if (IsLandingPage)
        //                {
        //                    found = true;
        //                    filterContext.Controller.ViewBag.FullName = token.FullName;
        //                    filterContext.Controller.ViewBag.UserRole = token.UserRole;
        //                    filterContext.Controller.ViewBag.FlatAccess = token.FlatAccess;
        //                    filterContext.Controller.ViewBag.UserId = token.Idf;
        //                }

        //                if (found == true)
        //                {

        //                    var dmsRequest = filterContext.HttpContext.Request;

        //                    bool result = dmsRequest.UrlReferrer != null && !String.IsNullOrWhiteSpace(dmsRequest.UrlReferrer.LocalPath) && !dmsRequest.UrlReferrer.LocalPath.Contains("Account/") && !dmsRequest.UrlReferrer.LocalPath.Contains("Home/");

        //                    bool urlResult = (dmsRequest.UrlReferrer == null && !dmsRequest.Url.LocalPath.Contains("Home/")) || result;

        //                    if (IsFile == false && (result || urlResult))
        //                    {
        //                        LoginUserAuth(filterContext);
        //                    }
        //                }

        //                if (!found)
        //                    AuthorizeRedirect(filterContext);
        //            }
        //        }
        //        else
        //        {
        //            RedirectToLogin(filterContext);
        //        }

        //    }

        //    public void CustomRedirect(AuthorizationContext filterContext)
        //    {
        //        var result = new RedirectResult("~/Account/Login?redirect=" +
        //                filterContext.HttpContext.Server.UrlEncode(filterContext.HttpContext.Request.RawUrl));
        //        filterContext.Result = result;
        //    }

        //    public void DecideLandingPage(AuthorizationContext filterContext, string action)
        //    {
        //        var result = new RedirectResult("~/Home/Index" + filterContext.HttpContext.Server.UrlEncode(action));
        //        filterContext.Result = result;
        //    }

        //    public void LoginUser(AuthorizationContext filterContext)
        //    {
        //        var result = new RedirectResult("~/Home/Index");
        //        filterContext.Result = result;
        //    }

        //    public void LoginUserAuth(AuthorizationContext filterContext)
        //    {
        //        var result = new RedirectResult("~/Account/Login");
        //        filterContext.Result = result;
        //    }

        //    public void AuthorizeRedirect(AuthorizationContext filterContext)
        //    {
        //        var result = new RedirectResult("~/User/ErrorMessage");
        //        filterContext.Result = result;
        //    }

        //    public void RedirectToLogin(AuthorizationContext filterContext)
        //    {
        //        var result = new RedirectResult("~/Account/Login");
        //        filterContext.Result = result;
        //    }

        //    public void SetMenus_V1(int userId, TokenInfo token)
        //    {
        //        UserManager usrMgr = new UserManager();
        //        token.FlatAccess = usrMgr.GetRolesByUser(userId);

        //        var accessRights = usrMgr.GetMenusByUserId(userId);

        //        var menus = accessRights.Where(x => x.ParentId == null).Select(y => new { Id = y.Id, Name = y.Description, Controller = y.Controller, Action = y.Action, Icon = y.Icon, Prefix = y.Prefix, OrderId = y.OrderId }).Distinct().OrderBy(x => x.OrderId).ToList();

        //        var finalmenus = (from row in menus
        //                          select new ModuleInfo
        //                          {
        //                              Id = row.Id,
        //                              Description = row.Name,
        //                              Controller = row.Controller,
        //                              Action = row.Action,
        //                              Icon = row.Icon,
        //                              Prefix = row.Prefix,
        //                              lstModules = GetList(accessRights, row.Id)
        //                          }).ToList();

        //        token.UserRole = finalmenus;
        //    }

        //    public List<ModuleInfo> GetList(List<ModuleInfo> dt, int parentId)
        //    {
        //        var results = dt.Where(x => x.ParentId == parentId).Select(y => new { Id = y.Id, Name = y.Description, Controller = y.Controller, Action = y.Action, Icon = y.Icon, Prefix = y.Prefix }).Distinct().ToList();

        //        return results.Select(y => new ModuleInfo()
        //        {
        //            Id = y.Id,
        //            Description = y.Name,
        //            Controller = y.Controller,
        //            Action = y.Action,
        //            Icon = y.Icon,
        //            Prefix = y.Prefix,
        //            lstModules = GetList(dt, y.Id)
        //        }).ToList();
        //    }
        //}
    }
}
