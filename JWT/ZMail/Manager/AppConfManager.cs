using System.Configuration;

namespace ZMail.Managers
{
    public class AppConfManager
    {
        public static string FromEmailId { get { return Properties.Settings.Default.FromEmailId; } }

        public static string MailServer { get { return Properties.Settings.Default.MailServer; } }

        public static string ActivateUserMail { get { return Properties.Settings.Default.ActivateUserMail; } }

        public static string UnableToSendEmail { get { return Properties.Settings.Default.UnableToSendEmail; } }

    }
}