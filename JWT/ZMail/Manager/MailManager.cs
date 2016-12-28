using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace ZMail.Managers
{
    public class MailManager
    {

        public bool SendEmail(string userEmailId, string body)
        {
            try
            {
                MailMessage mail = new MailMessage(AppConfManager.FromEmailId, userEmailId);
                SmtpClient client = new SmtpClient();
                //client.Port = 25;
                mail.IsBodyHtml = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.Credentials = new System.Net.NetworkCredential("", "");
                client.Host = AppConfManager.MailServer;
                mail.Subject = AppConfManager.ActivateUserMail;
                mail.Body = body;
                client.Send(mail);
                return true;
            }
            catch (Exception ex)
            {
                // throw ex;
                throw new Exception(AppConfManager.UnableToSendEmail);
            }
        }


        public bool SendEmail(List<string> userEmailIds, string subject, string body, List<string> CCUsers, List<string> BCCUsers)
        {
            try
            {

                MailMessage mail = new MailMessage();
                SmtpClient client = new SmtpClient();
                //client.Port = 25;
                mail.IsBodyHtml = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.Credentials = new System.Net.NetworkCredential("", "");
                client.Host = AppConfManager.MailServer;
                mail.Subject = subject;
                mail.From = new MailAddress(AppConfManager.FromEmailId);
                userEmailIds.ForEach(x => { if (!String.IsNullOrWhiteSpace(x)) { mail.To.Add(x); }; });

                if (CCUsers != null)
                    CCUsers.ForEach(x => { if (!String.IsNullOrWhiteSpace(x)) { mail.CC.Add(x); }; });

                if (BCCUsers != null)
                    BCCUsers.ForEach(x => { if (!String.IsNullOrWhiteSpace(x)) { mail.Bcc.Add(x); }; });

                mail.Body = body;
                client.Send(mail);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        
    }

    public enum EnumEmailStatus
    {
        None = 0,
        EmailStatusSent = 1,
        EmailStatusNotSent = 2,
        EmailStatusReadyToSend = 3,
        EmailStatusFailed = 4
    }

}
