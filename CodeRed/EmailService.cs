using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace CodeRed
{
    public static class EmailService
    {

        public static string FromAddress { get { return ConfigurationManager.AppSettings["FromAddress"]; } }
        public static string FromName { get { return ConfigurationManager.AppSettings["FromName"]; } }
        public static string ReplyTo { get { return ConfigurationManager.AppSettings["ReplyTo"]; } }
        public static string SmtpHost { get { return ConfigurationManager.AppSettings["SmtpHost"]; } }
        public static string SmtpUsername { get { return ConfigurationManager.AppSettings["SmtpUsername"]; } }
        public static string SmtpPassword { get { return ConfigurationManager.AppSettings["SmtpPassword"]; } }
        public static int Port { get { return Convert.ToInt32(ConfigurationManager.AppSettings["Port"]); } }
        public static bool SSL { get { return Convert.ToBoolean(ConfigurationManager.AppSettings["SSL"]); } }
        public static bool sendMail(string Subject, string mailBody, string PlainText, string ToAddress, string CCAddress)
        {
            try
            {
                MailMessage mailOB = new MailMessage();


                mailOB.IsBodyHtml = true;
                mailOB.From = new MailAddress(FromAddress, FromName);
                mailOB.To.Add(new MailAddress(ToAddress));

                mailOB.ReplyTo = new MailAddress(ReplyTo);
                //mailOB.Sender = new MailAddress("Mihir.Pandya@Timesgroup.com");

                // If CCAddress.Trim <> "" Then
                // mailOB.CC.Add(New MailAddress(CCAddress))
                // End If
                if (CCAddress.Trim() != "")
                {
                    var cca = CCAddress.Split(char.Parse(","));
                    for (int k = 0; k <= cca.Length - 1; k++)
                    {
                        if (cca[k].ToString() != "")
                            mailOB.CC.Add(new MailAddress(cca[k]));
                    }
                }

                // If BCCAddress.Trim <> "" Then
                // mailOB.Bcc.Add(New MailAddress(BCCAddress))
                // End If


                mailOB.Subject = Subject;


                // first we create the Plain Text part
                AlternateView plainView = AlternateView.CreateAlternateViewFromString(PlainText, null/* TODO Change to default(_) if this is not a reference type */, "text/plain");

                // then we create the Html part
                // to embed images, we need to use the prefix 'cid' in the img src value
                // the cid value will map to the Content-Id of a Linked resource.
                // thus <img src='cid:companylogo'> will map to a LinkedResource with a ContentId of 'companylogo'

                //StreamReader sr;
                //sr = new StreamReader(HttpContext.Current.Server.MapPath("~/RegistrationMail.html"));
                //string content;
                //content = sr.ReadToEnd();
                //content = content.Replace("{mailbody}", mailBody);

                //AlternateView htmlView = AlternateView.CreateAlternateViewFromString(content, null/* TODO Change to default(_) if this is not a reference type */, "text/html");

                AlternateView htmlView = AlternateView.CreateAlternateViewFromString(mailBody, null/* TODO Change to default(_) if this is not a reference type */, "text/html");


                // add the views
                mailOB.AlternateViews.Add(plainView);
                mailOB.AlternateViews.Add(htmlView);

                System.Net.Mail.SmtpClient smtpOB = new System.Net.Mail.SmtpClient();
                //System.Net.NetworkCredential mailAuthentication = new System.Net.NetworkCredential("marketing@kestoneglobal.com", "Kestone@2019");
                // smtpOB.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis
                // smtpOB.Host = "localhost" 
                // smtpOB.Host = "relay-hosting.secureserver.net"
                smtpOB.Host = SmtpHost;
                smtpOB.Port = Port;
                smtpOB.EnableSsl = SSL;

                //smtpOB.Host = "mail.et-edge.com";
                //smtpOB.Port = 587;
                //smtpOB.EnableSsl = true;



                System.Net.NetworkCredential mailAuthentication = new System.Net.NetworkCredential(SmtpUsername, SmtpPassword);
                smtpOB.Credentials = mailAuthentication;
                smtpOB.Send(mailOB);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}