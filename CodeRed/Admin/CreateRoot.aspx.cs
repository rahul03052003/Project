using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeRed.Admin
{
    public partial class CreateRoot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
            //string aname = Session["AgencyName"].ToString();
            //string id = Session["Aid"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            try
            {
               


                con.Open();
                Random r = new Random();
                String str = "Usr" + r.Next(123, 9999);
                int pid = r.Next(123, 9999);
                string IPAddress = HttpContext.Current.Request.UserHostAddress;
                string SQL = "";
                // string ComId = Session["cid"].ToString();
                string ComId = "4";




                SQL = "insert into tblroot";

                SQL += "           ([RootId]";
                SQL += "           ,[Id]";
                SQL += "           ,[Source]";
                SQL += "           ,[Destination]";
                SQL += "           ,[Slat]";
                SQL += "           ,[Slong]";
                SQL += "           ,[Dlat]";
           






                SQL += "           , [Dlong])";


                SQL += " values";
                SQL += "           ('" + (pid) + "'";
                SQL += "           ,'" + (pid) + "'";
                SQL += "           ,'" + (source.Value) + "'";
                SQL += "           ,'" + (destination.Value) + "'";
                SQL += "           ,'" + (SLattitude.Value) + "'";
                SQL += "           ,'" + (SLongitude.Value) + "'";
                SQL += "           ,'" + (DLattitude.Value) + "'";
                SQL += "           ,'" + (DLongitude.Value) + "'";







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
                Response.Write("<script>alert('Root Data added Successfully!!!');</script>");
                Response.Write("<script>window.location='manageRoots.aspx';</script>");
            }
            catch (Exception ex)
            {
            }
            finally
            {
                con.Close();
            }

        }
    }
}