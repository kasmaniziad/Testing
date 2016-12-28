using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZWeb.Helper
{
    public class AppConfigManager
    {
        public static string LoginLinkExpired { get { return Properties.Settings.Default.LoginLinkExpired; } }

        public static string NotAuthorized { get { return Properties.Settings.Default.NotAuthorized; } }

        public static string AcceptTerms { get { return Properties.Settings.Default.AcceptTerms; } }

        public static string BaseAddress { get { return Properties.Settings.Default.BaseAddress; } }

        public static string AppToken { get { return Properties.Settings.Default.AppToken; } }

        public static string TokenExpired { get { return Properties.Settings.Default.TokenExpired; } }

        public static string CookieKey { get { return Properties.Settings.Default.CookieKey; } }

        public static string CookieNotFound { get { return Properties.Settings.Default.CookieNotFound; } }

        public static string MediaType { get { return Properties.Settings.Default.MediaType; } }

        public static string AttachmentName { get { return Properties.Settings.Default.AttachmentName; } }

        public static string GetSiteBasicInformationApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetSiteBasicInformationApi); } }

        public static string GetCreditLimitApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetCreditLimitApi); } }

        public static string GetAcceptedNotificationsApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetAcceptedNotificationsApi); } }

        public static string GetAllAcceptedNotificationsApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetAllAcceptedNotificationsApi); } }

        public static string GetPortalNotificationCategoryApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetPortalNotificationCategoryApi); } }

        public static string DownloadApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.DownloadApi); } }

        public static string UpdateUserAgreementStatusApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.UpdateUserAgreementStatusApi); } }

        public static string GetSearchedOrdersApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetSearchedOrdersApi); } }

        public static string GetSiteOrdersApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetSiteOrdersApi); } }

        public static string GetDataForNewOrderApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetDataForNewOrderApi); } }

        public static string SaveNewOrderApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.SaveNewOrderApi); } }

        public static string ValidateUserApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.ValidateUserApi); } }

        public static string ValidateActivationUserApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.ValidateActivationUserApi); } }

        public static string SaveUserApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.SaveUserApi); } }

        public static string LoginUserApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.LoginUserApi); } }

        public static string IsLoggedInApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.IsLoggedInApi); } }

        public static string GetSitesApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetSitesApi); } }

        public static string GetProductsApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetProductsApi); } }

        public static string GetShiftsApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetShiftsApi); } }

        public static string ResetPasswordApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.ResetPasswordApi); } }

        public static string PlaceOrderApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.PlaceOrderApi); } }

        public static string GetPendingCircularApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetPendingCircularApi); } }

        public static string UpdateCircularStatusApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.UpdateCircularStatusApi); } }

        public static string DiaryApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.DiaryApi); } }
        public static string DiaryDayApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.DiaryDayApi); } }

        /*MakehtmlForPopUp*/
        public static string MakehtmlForPopUp { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.MakehtmlForPopUp); } }
        public static string GetCustomerInfoApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetCustomerInfoMethod); } }
        public static string GetHtmlonEventClickApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetHtmlonEventClickurl); } }
        public static string SavePsPlaningOnlineApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.SavePsPlaningOnlineApiurl); } }
        public static string DiscardPlaningOnlineApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.DiscardPlaningOnlineApiurl); } }
        public static string GetHtmlsitePlanTodayApi { get { return String.Format("{0}{1}", Properties.Settings.Default.BaseAddress, Properties.Settings.Default.GetHtmlsitePlanTodayApiurl); } }
        public static string BadRequest { get { return Properties.Settings.Default.BadRequest; } }

        public static string ServerHeader { get { return Properties.Settings.Default.ServerHeader; } }

    }
}