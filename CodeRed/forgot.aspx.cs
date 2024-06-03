using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeRed
{
    public partial class forgot : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static void sendEmailOTP(string _Emailid, string pswad, string un)
        {
            string Subject = "pswd is " + pswad;
            string mailBody = "";
            var _HostLink = ConfigurationManager.AppSettings["HOSTLink"];



            mailBody += "<p>";
            mailBody += "Dear " + un + ",</p>";
            mailBody += "<p></p>";
            mailBody += "<p>Your password is <b>" + pswad + "</b> </p>";
           

            //mailBody += "<p>Thank you for registering for  AFFM’s 24th Annual Spring Conference; 'Building Empathy, Compassion, and Trust'.<br />";
            //mailBody += "Event details will be sent to you as we near the event.</p>";
            //mailBody += "<p>Date: 6th October 2021</ p>";
            //mailBody += "<p>Time: 9:00 AM – 6:00 PM IST</ p>";
            //mailBody += "<p>Click <a href='https://cnbctv18-media-entertainment-symposium.nowvirtual.live/'>here</a> to Login to the event. Looking forward to see you at the event.</p>";


            //mailBody += "<p>If you are using a VPN connection, some platform features may not be accessible as per the policies of your VPN/Firewall service provider. In this case, request you switch to your personal network.</p>";
            //mailBody += "<p>We will get back to you with your confirmation details along with the event pass.</p>";
            //mailBody += "<p>For support, please reach out to Jayati Dhingra at <a href='mailto:jadhingra@idc.com'>jadhingra@idc.com</a>, 9953158378</p>";
            //mailBody += "<p>If you have any issues about the  virtual platform; please feel free to contact us at <a href='mailto:mail@domeexhibitions.com'>mail@domeexhibitions.com</a></p>";

            mailBody += "<p>Regards,<br />";
            mailBody += "TMS</p>";
            mailBody += "<p>&nbsp;</p>";
            mailBody += "<p>&nbsp;</p>";
            EmailService.sendMail(Subject, mailBody, "", _Emailid, "");

        }
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            try
            {
                string pd = "";
                string un = "";
                con.Open();
                string query = "select * from userid where email='" + email.Value + "'; ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        //Session["Username"] = dr.GetValue(1).ToString();
                        //Session["uid"] = dr.GetValue(0).ToString();
                         pd = dr.GetValue(4).ToString();
                        un = dr.GetValue(1).ToString();
                        //string stat = dr.GetValue(7).ToString();
                        //string tou = dr.GetValue(4).ToString();

                        //Session["Username"] = dr.GetValue(0).ToString();
                        //Session["Email"] = dr.GetValue(5).ToString();
                        //Session["Phone"] = dr.GetValue(6).ToString();
                        sendEmailOTP(email.Value, pd, un);
                        Response.Redirect("index.aspx");
                      
                    }
                   
                }
                else
                {
                    Response.Write("<script>alert('Invalid User!!!');</script>");
                }

            }
            catch
            {
            }
            finally
            {
                con.Close();
            }
        }
    }
}