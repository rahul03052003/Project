using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeRed.Admin
{
    public partial class createFAQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {

                Response.Redirect("../index.aspx");
            }
            Label6.Text = "Admin";
            Label7.Text = "Admin";
        }
        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
          
           
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            try
            {
                string a = "";
            

                con.Open();
                Random r = new Random();
                String str = "Usr" + r.Next(123, 9999);
                int pid = r.Next(123, 9999);
                string IPAddress = HttpContext.Current.Request.UserHostAddress;
                string SQL = "";
                // string ComId = Session["cid"].ToString();
                string ComId = "4";




                SQL = "insert into faq";

                SQL += "           ([id]";
                SQL += "           ,[Question]";
     


                SQL += "           , [Anss])";


                SQL += " values";
                SQL += "           ('" + (pid) + "'";
                SQL += "           ,'" + (Pname.Value) + "'";
         
                SQL += "           ,'" + (Ploc.Value) + "'";
        






                SQL += ")";
                SqlCommand cmd = new SqlCommand(SQL, con);
                cmd.ExecuteNonQuery();
                try
                {

                    //MailMessage m = new MailMessage("gangothrdipdcprincipal@gmail.com", Cemail.Value, "Welcome Mail !!!", "​Welcome to the Food Network Application !!!\n Your User  name : " + Cemail.Value + "\n Your Password is: " + Cemail.Value + "");
                    //SmtpClient s = new SmtpClient("smtp.gmail.com", 587);
                    //s.EnableSsl = true;
                    //s.UseDefaultCredentials = false;
                    //s.Credentials = new System.Net.NetworkCredential("gangdothrdipucprincipal@gmail.com", "vumehscxirxcwarq");
                    //s.EnableSsl = true;
                    //s.Send(m);
                    //Console.WriteLine("Mail Sent");
                }
                catch (Exception ex)
                {
                }
                Response.Write("<script>alert('FAQ added Successfully!!!');</script>");
                Response.Write("<script>window.location='manageFAQ.aspx';</script>");
            }
            catch (Exception ex)
            {
            }
            finally
            {
                con.Close();
            }

        }

        //protected void Unnamed_ServerClick1(object sender, EventArgs e)
        //{

        //}
    }
}