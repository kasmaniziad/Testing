using System.Configuration;

namespace JWT.Managers
{
    public class AppConfManager
    {
        public static string CookieKey { get { return Properties.Settings.Default.CookieKey; } }

        public static string SecretAccessKey { get { return Properties.Settings.Default.SecretAccessKey; } }

        public static double KeepAliveTime { get { return Properties.Settings.Default.KeepAliveTime; } }

        public static double EmailKeepAliveTime { get { return Properties.Settings.Default.EmailKeepAliveTime; } }

        public static double InternalKeepAlive { get { return Properties.Settings.Default.InternalKeepAlive; } }

        public static string UnableToEncode { get { return Properties.Settings.Default.UnableToEncode; } }

        public static string UnableToDecode { get { return Properties.Settings.Default.UnableToDecode; } }

        public static string TokenExpired { get { return Properties.Settings.Default.TokenExpired; } }

        public static string PasswordPrivateKey { get { return Properties.Settings.Default.PasswordPrivateKey; } }
        
        public static string CookieNotFound { get { return Properties.Settings.Default.CookieNotFound; } }

    }
}