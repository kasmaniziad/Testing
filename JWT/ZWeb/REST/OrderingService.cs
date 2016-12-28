using ZWeb.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web;

namespace ZWeb.REST
{
    public class OrderingService
    {
        public async Task<Tuple<List<DayInfo>, List<LomoShiftInfo>, string, string>> GetSiteOrderList(string token, string ipAddress)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(AppConfigManager.BaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue(AppConfigManager.MediaType));
                var response = await client.PostAsJsonAsync(AppConfigManager.GetSiteOrdersApi, new { Token = token, IpAddress = ipAddress });
                if (response.IsSuccessStatusCode)
                    return await response.Content.ReadAsAsync<Tuple<List<DayInfo>, List<LomoShiftInfo>, string, string>>();
                throw new Exception(AppConfigManager.NotAuthorized);
            }
        }

        public async Task<Tuple<OnlineUserInfo, string>> GetSiteBasicInformation(string token, string ipAddress)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(AppConfigManager.BaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue(AppConfigManager.MediaType));
                var response = await client.PostAsJsonAsync(AppConfigManager.GetSiteBasicInformationApi, new { Token = token, IpAddress = ipAddress });
                if (response.IsSuccessStatusCode)
                    return await response.Content.ReadAsAsync<Tuple<OnlineUserInfo, string>>();
                throw new Exception(AppConfigManager.NotAuthorized);
            }
        }

        public async Task<Tuple<List<DayInfo>, List<LomoShiftInfo>, string, string>> GetDataForNewOrder(DateTime date, string token, string ipAddress)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(AppConfigManager.BaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue(AppConfigManager.MediaType));
                var response = await client.PostAsJsonAsync(AppConfigManager.GetDataForNewOrderApi, new { Token = token, IpAddress = ipAddress, OrderDate = date });
                if (response.IsSuccessStatusCode)
                    return await response.Content.ReadAsAsync<Tuple<List<DayInfo>, List<LomoShiftInfo>, string, string>>();
                throw new Exception(AppConfigManager.NotAuthorized);
            }
        }

        public async Task<Tuple<bool, string>> SaveNewOrder(List<OONewOrderInfo> orders, DateTime date, string token, string ipAddress)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(AppConfigManager.BaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue(AppConfigManager.MediaType));
                var response = await client.PostAsJsonAsync(AppConfigManager.SaveNewOrderApi, new { Token = token, IpAddress = ipAddress, OrderDate = date, Orders = orders });
                if (response.IsSuccessStatusCode)
                    return await response.Content.ReadAsAsync<Tuple<bool, string>>();
                throw new Exception(AppConfigManager.NotAuthorized);
            }
        }
        
    
    }
    
    public class OnlineSearchInfo
    {
        public string SearchString { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public byte ProductId { get; set; }
        public int PageId { get; set; }
    }

    public class OONewOrderInfo
    {
        public int ShiftId { get; set; }
        public int? NoOfLoad { get; set; }
        public int ProductId { get; set; }
    }

    public class ViewOnlineOrderInfo
    {
        public byte ProductId { get; set; }
        public string ProductName { get; set; }
        public int? Quantity { get; set; }
        public byte? NoOfLoad { get; set; }
        public int ShiftId { get; set; }
        public DateTime ShiftDay { get; set; }
        public string ShiftName { get; set; }
        public int LoadCapacity { get; set; }
        public int? SiteId { get; set; }
        public string SiteName { get; set; }
        public string SiteLocation { get; set; }
        public bool? IsExported { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }

    }
    
    
    public class LomoShiftInfo
    {
        public int ProductId { get; set; }
        public DateTime ActualDate { get; set; }
        public string ShiftName { get; set; }
    }

    
}