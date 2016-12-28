using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace DMSClassLibrary.Managers
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

        #region Save Email Data to Table for Email queueing [programmer:smaliakkal]
        public bool EmailQueueing(List<string> EmailTO, string from, List<string> CCUsers, List<string> BCCUsers, string subject, string body, int CreatedBy, byte emailstatus)
        {
            try
            {
                // define INSERT query with parameters
                string query = "INSERT INTO notify.EmailLog (EmailTo, EmailCC,EmailBCC,EmailFrom,EmailSubject,EmailBody,CreatedBy,CreatedOn,ModifiedOn,EmailStatusId) " +
                               "VALUES (@EmailTo,@EmailCC,@EmailBCC,@EmailFrom,@EmailSubject,@EmailBody,@CreatedBy,@CreatedOn,@ModifiedOn,@EmailStatusId) ";

                // create connection and command
                using (SqlConnection cn = new SqlConnection(AppConfManager.ConnectionString))
                using (SqlCommand cmd = new SqlCommand(query, cn))
                {
                    string emailto = String.Join(",", EmailTO);
                    string emailcc = String.Join(",", CCUsers);
                    string emailbcc = String.Join(",", BCCUsers);
                    cmd.Parameters.Add("@EmailTo", SqlDbType.VarChar, -1).Value = emailto.ToString();
                    cmd.Parameters.Add("@EmailCC", SqlDbType.VarChar, -1).Value = emailcc.ToString();
                    cmd.Parameters.Add("@EmailBCC", SqlDbType.VarChar, -1).Value = emailbcc.ToString();
                    cmd.Parameters.Add("@EmailFrom", SqlDbType.VarChar, 50).Value = from;
                    cmd.Parameters.Add("@EmailSubject", SqlDbType.NVarChar, 1000).Value = subject;
                    cmd.Parameters.Add("@EmailBody", SqlDbType.NVarChar, -1).Value = body;
                    cmd.Parameters.Add("@CreatedBy", SqlDbType.Int).Value = CreatedBy;
                    cmd.Parameters.Add("@CreatedOn", SqlDbType.DateTime).Value = DateTime.Now;
                    cmd.Parameters.Add("@ModifiedOn", SqlDbType.DateTime).Value = DateTime.Now;
                    cmd.Parameters.Add("@EmailStatusId", SqlDbType.TinyInt).Value = emailstatus;

                    // open connection, execute INSERT, close connection
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion

        #region GenerateStreamFromString [programmer:smaliakkal]
        public Stream GenerateStreamFromString(string s)
        {
            MemoryStream stream = new MemoryStream();
            StreamWriter writer = new StreamWriter(stream);
            writer.Write(s);
            writer.Flush();
            stream.Position = 0;
            return stream;
        }
        #endregion

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
