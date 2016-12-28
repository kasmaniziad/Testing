using ZWeb.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web;

namespace ZWeb.REST
{
    public class LoginService
    {
        public async Task<Tuple<string, string>> ValidateAsync(string ldo, string ipAddress)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(AppConfigManager.BaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue(AppConfigManager.MediaType));
                var response = await client.PostAsJsonAsync(AppConfigManager.ValidateUserApi, new { ldo = ldo, IpAddress = ipAddress });

                if (response.IsSuccessStatusCode)
                    return await response.Content.ReadAsAsync<Tuple<string, string>>();

                throw new Exception(AppConfigManager.NotAuthorized);
            }
        }

        public async Task<Tuple<string, string>> ValidateActivationAsync(string ldo, string ipAddress)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(AppConfigManager.BaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue(AppConfigManager.MediaType));
                var response = await client.PostAsJsonAsync(AppConfigManager.ValidateActivationUserApi, new { ldo = ldo, IpAddress = ipAddress });

                if (response.IsSuccessStatusCode)
                    return await response.Content.ReadAsAsync<Tuple<string, string>>();

                throw new Exception(AppConfigManager.NotAuthorized);
            }
        }

        public async Task<string> SaveUser(string token, string ipAddress, string password)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(AppConfigManager.BaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue(AppConfigManager.MediaType));
                var response = await client.PostAsJsonAsync(AppConfigManager.SaveUserApi, new { Token = token, IpAddress = ipAddress, Password = password });

                if (response.IsSuccessStatusCode)
                    return await response.Content.ReadAsAsync<string>();

                throw new Exception(AppConfigManager.NotAuthorized);
            }
        }

        public async Task<string> LoginUser(string ipAddress, string emailId, string password)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(AppConfigManager.BaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue(AppConfigManager.MediaType));
                var response = await client.PostAsJsonAsync(AppConfigManager.LoginUserApi, new { IpAddress = ipAddress, EmailId = emailId, Password = password });

                if (response.IsSuccessStatusCode)
                    return await response.Content.ReadAsAsync<string>();

                throw new Exception(AppConfigManager.NotAuthorized);
            }
        }

        public async Task<string> IsLoggedIn(string token, string ipAddress)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(AppConfigManager.BaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue(AppConfigManager.MediaType));
                var response = await client.PostAsJsonAsync(AppConfigManager.IsLoggedInApi, new { Token = token, IpAddress = ipAddress });

                if (response.IsSuccessStatusCode)
                    return await response.Content.ReadAsAsync<string>();

                throw new Exception(AppConfigManager.NotAuthorized);
            }
        }

        public async Task<bool> ResetPassword(string emailId, string ipAddress)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(AppConfigManager.BaseAddress);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue(AppConfigManager.MediaType));
                var response = await client.PostAsJsonAsync(AppConfigManager.ResetPasswordApi, new { EmailId = emailId, IpAddress = ipAddress });
                if (response.IsSuccessStatusCode)
                    return await response.Content.ReadAsAsync<bool>();
                throw new Exception(AppConfigManager.NotAuthorized);
            }
        }




    }
}