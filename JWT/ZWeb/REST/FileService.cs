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
    public class FileService
    {
        public async Task<PortalResourceInfo> Download(string token, string ipAddress, string originalFileName)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(AppConfigManager.BaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue(AppConfigManager.MediaType));
                var response = await client.PostAsJsonAsync(AppConfigManager.DownloadApi, new
                {
                    Token = token,
                    IpAddress = ipAddress,
                    OriginalFileName = originalFileName
                });
                if (response.IsSuccessStatusCode)
                    return await response.Content.ReadAsAsync<PortalResourceInfo>();
                throw new Exception(AppConfigManager.NotAuthorized);
            }
        }
    }

    public class PortalResourceInfo
    {
        public Guid ResourceId { get; set; }
        public string SystemFileName { get; set; }
        public string OriginalFileName { get; set; }
        public string FileExtension { get; set; }
        public string DataUrl { get; set; }
        public byte[] Data { get; set; }

    }

    public class DayInfo
    {
        public DateTime ActualDate { get; set; }
        public string DateCaption { get; set; }
        public List<ProductInfo> lstProducts { get; set; }
    }

    public class ProductInfo
    {
        public byte ProductId { get; set; }
        public string ProductName { get; set; }
        public List<ShiftDataInfo> lstShiftData { get; set; }
    }

    public class ShiftDataInfo
    {
        public int ShiftId { get; set; }
        public int? Quantity { get; set; }
        public int? NoOfLoad { get; set; }
        public int LoadCapacity { get; set; }
        public bool CanEdit { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
    }


    public class OnlineUserInfo
    {
        public int SiteId { get; set; }
        public string SiteNumber { get; set; }
        public string SiteName { get; set; }
        public string EmailId { get; set; }
        public string UserName { get; set; }
        public string MobileNo { get; set; }
        public string LandlineNo { get; set; }
        public string CustomerName { get; set; }
        public int? CustomerNumber { get; set; }
        public DateTime? LastOrderedDate { get; set; }
        public bool? IsResidential { get; set; }

    }

}