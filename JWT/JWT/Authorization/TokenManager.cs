using JWT.Managers;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace JWT.Authorization
{
    public enum HvHashAlgorithm
    {
        RS256,
        HS384,
        HS512
    }

    public class TokenInfo
    {
        public int Idf { get; set; }
        public string FullName { get; set; }
        public string EmailId { get; set; }
        public int? ImpersonateUserId { get; set; }
        public DateTime Expiry { get; set; }
    }

    public class OnlineToken
    {
        public int Id { get; set; }
        public string Ip { get; set; }
        public bool hasAccepted { get; set; }
        public bool hasAcceptedCircular { get; set; }
        public DateTime Expiry { get; set; }
    }

    public class JsonWebToken
    {
        private static Dictionary<HvHashAlgorithm, Func<byte[], byte[], byte[]>> HashAlgorithms;

        static JsonWebToken()
        {
            HashAlgorithms = new Dictionary<HvHashAlgorithm, Func<byte[], byte[], byte[]>>
            {
                { HvHashAlgorithm.RS256, (key, value) => { using (var sha = new HMACSHA256(key)) { return sha.ComputeHash(value); } } },
                { HvHashAlgorithm.HS384, (key, value) => { using (var sha = new HMACSHA384(key)) { return sha.ComputeHash(value); } } },
                { HvHashAlgorithm.HS512, (key, value) => { using (var sha = new HMACSHA512(key)) { return sha.ComputeHash(value); } } }
            };
        }

        public static string Encode(object payload, string key, HvHashAlgorithm algorithm)
        {
            return Encode(payload, Encoding.UTF8.GetBytes(key), algorithm);
        }

        public static string Encode(object payload, byte[] keyBytes, HvHashAlgorithm algorithm)
        {
            try
            {
                var segments = new List<string>();
                var header = new { alg = algorithm.ToString(), typ = "JWT" };

                byte[] headerBytes = Encoding.UTF8.GetBytes(JsonConvert.SerializeObject(header, Formatting.None));
                byte[] payloadBytes = Encoding.UTF8.GetBytes(JsonConvert.SerializeObject(payload, Formatting.None));

                segments.Add(Base64UrlEncode(headerBytes));
                segments.Add(Base64UrlEncode(payloadBytes));

                var stringToSign = string.Join(".", segments.ToArray());

                var bytesToSign = Encoding.UTF8.GetBytes(stringToSign);

                byte[] signature = HashAlgorithms[algorithm](keyBytes, bytesToSign);
                segments.Add(Base64UrlEncode(signature));

                return string.Join(".", segments.ToArray());

            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                throw new Exception("UnableToEncode");
            }
        }

        public static string Decode(string token, string key)
        {
            return Decode(token, key, true);
        }

        public static string Decode(string token, string key, bool verify)
        {
            try
            {
                var parts = token.Split('.');
                var header = parts[0];
                var payload = parts[1];
                byte[] crypto = Base64UrlDecode(parts[2]);

                var headerJson = Encoding.UTF8.GetString(Base64UrlDecode(header));
                var headerData = JObject.Parse(headerJson);
                var payloadJson = Encoding.UTF8.GetString(Base64UrlDecode(payload));
                var payloadData = JObject.Parse(payloadJson);

                if (verify)
                {
                    var bytesToSign = Encoding.UTF8.GetBytes(string.Concat(header, ".", payload));
                    var keyBytes = Encoding.UTF8.GetBytes(key);
                    var algorithm = (string)headerData["alg"];

                    var signature = HashAlgorithms[GetHashAlgorithm(algorithm)](keyBytes, bytesToSign);
                    var decodedCrypto = Convert.ToBase64String(crypto);
                    var decodedSignature = Convert.ToBase64String(signature);

                    if (decodedCrypto != decodedSignature)
                    {
                        throw new ApplicationException(string.Format("Invalid signature. Expected {0} got {1}", decodedCrypto, decodedSignature));
                    }
                }

                return payloadData.ToString();
            }
            catch (Exception ex)
            {
                string message = ex.Message;
                throw new Exception(AppConfManager.UnableToDecode);
            }

        }

        public static T DecodeToken<T>(string token, string key, bool verify, bool verifyExpiry)
        {
            try
            {
                var parts = token.Split('.');
                var header = parts[0];
                var payload = parts[1];
                byte[] crypto = Base64UrlDecode(parts[2]);

                var headerJson = Encoding.UTF8.GetString(Base64UrlDecode(header));
                var headerData = JObject.Parse(headerJson);
                var payloadJson = Encoding.UTF8.GetString(Base64UrlDecode(payload));
                var payloadData = JObject.Parse(payloadJson);

                if (verify)
                {
                    var bytesToSign = Encoding.UTF8.GetBytes(string.Concat(header, ".", payload));
                    var keyBytes = Encoding.UTF8.GetBytes(key);
                    var algorithm = (string)headerData["alg"];

                    var signature = HashAlgorithms[GetHashAlgorithm(algorithm)](keyBytes, bytesToSign);
                    var decodedCrypto = Convert.ToBase64String(crypto);
                    var decodedSignature = Convert.ToBase64String(signature);

                    if (decodedCrypto != decodedSignature)
                    {
                        throw new ApplicationException(string.Format("Invalid signature. Expected {0} got {1}", decodedCrypto, decodedSignature));
                    }
                }

                var obj = JsonConvert.DeserializeObject<T>(payloadData.ToString());

                if (!verifyExpiry)
                    return obj;
                else
                {
                    object expiry = obj.GetType().GetProperty("Expiry").GetValue(obj);
                    if (expiry != null && Convert.ToDateTime(expiry.ToString()).ToLocalTime() > DateTime.UtcNow.ToLocalTime())
                        return obj;
                    else
                        throw new ApplicationException(AppConfManager.TokenExpired);
                }

            }
            catch (Exception ex)
            {
                if (ex.Message != AppConfManager.TokenExpired)
                    throw new Exception(AppConfManager.UnableToDecode);
                else
                    throw new Exception(ex.Message);

            }

        }

        private static HvHashAlgorithm GetHashAlgorithm(string algorithm)
        {
            switch (algorithm)
            {
                case "RS256": return HvHashAlgorithm.RS256;
                case "HS384": return HvHashAlgorithm.HS384;
                case "HS512": return HvHashAlgorithm.HS512;
                default: throw new InvalidOperationException("Algorithm not supported.");
            }
        }

        // from JWT spec
        public static string Base64UrlEncode(byte[] input)
        {
            var output = Convert.ToBase64String(input);
            output = output.Split('=')[0]; // Remove any trailing '='s
            output = output.Replace('+', '-'); // 62nd char of encoding
            output = output.Replace('/', '_'); // 63rd char of encoding
            return output;
        }

        // from JWT spec
        public static byte[] Base64UrlDecode(string input)
        {
            var output = input;
            output = output.Replace('-', '+'); // 62nd char of encoding
            output = output.Replace('_', '/'); // 63rd char of encoding
            switch (output.Length % 4) // Pad with trailing '='s
            {
                case 0: break; // No pad chars in this case
                case 2: output += "=="; break; // Two pad chars
                case 3: output += "="; break; // One pad char
                default: throw new System.Exception("Illegal base64url string!");
            }
            var converted = Convert.FromBase64String(output); // Standard base64 decoder
            return converted;
        }
    }
}
