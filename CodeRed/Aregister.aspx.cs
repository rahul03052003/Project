using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace CodeRed
{
    public partial class Aregister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            try
            {
                con.Open();
                Random r = new Random();
                int num = r.Next(99, 9999);
                string aid = Aname.Value + num;
                string rquery = "insert into Agency(id,Name,email,phone,pswd,AgencyName) values('" + num + "','" + uname.Value + "','" + email.Value + "','" + phn.Value + "','" + pswd.Value + "','"+ aid + "') ";
                SqlCommand cmd = new SqlCommand(rquery, con);
                cmd.ExecuteNonQuery();

                try
                {
                    MailMessage m = new MailMessage("cloudscomputing<script>document.write(new Date().getFullYear());</script> @gmail.com", email.Value, "Welcome Mail !!!", "​Welcome to the Online Bidding application !!!\n Your Username is: " + uname.Value + "\n Your Password is: " + pswd.Value + "\n. please wait for the admin approval");
                    SmtpClient s = new SmtpClient("smtp.gmail.com", 587);
                    s.Credentials = new System.Net.NetworkCredential("cloudscomputing<script>document.write(new Date().getFullYear());</script> @gmail.com", "cloud@123");
                    s.EnableSsl = true;
                    s.Send(m);
                }
                catch
                {
                }
                Response.Write("<script>alert('Thank you for registering with us!!!');</script>");

                Response.Write("<script>window.location='login.aspx';</script>");
                //Resetter();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Email id already used!!!');</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }
}