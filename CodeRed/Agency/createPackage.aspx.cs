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

namespace CodeRed.Agency
{
    public partial class createPackage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {

                Response.Redirect("../index.aspx");
            }
            Label6.Text = Session["AgencyName"].ToString();
            Label7.Text = Session["Name"].ToString();
        }
        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
            string aname = Session["AgencyName"].ToString();
            string id = Session["Aid"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            try
            {
                string a = "";
                if (FileUpload1.HasFile)
                {
                    string path = Server.MapPath(@"../upload/");


                    string extension = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);

                    a = DateTime.Now.ToFileTime() + extension;
                    FileUpload1.SaveAs(path + a);
                    string imgs = path + a;



                }


                con.Open();
                Random r = new Random();
                String str = "Usr" + r.Next(123, 9999);
                int pid =  r.Next(123, 9999);
                string IPAddress = HttpContext.Current.Request.UserHostAddress;
                string SQL = "";
                // string ComId = Session["cid"].ToString();
                string ComId = "4";




                SQL = "insert into tbltourpackages";

                SQL += "           ([PackageId]";
                SQL += "           ,[PackageName]";
                SQL += "           ,[PackageType]";
                SQL += "           ,[PackagePrice]";
                SQL += "           ,[PackageFetures]";
                SQL += "           ,[PackageDetails]";
                SQL += "           ,[PackageLocation]";
                SQL += "           ,[Aname]";
                SQL += "           ,[Ptime]";
                SQL += "           ,[Aid]";
                





                SQL += "           , [PackageImage])";


                SQL += " values";
                SQL += "           ('" + (pid) + "'";
                SQL += "           ,'" + (Pname.Value) + "'";
                SQL += "           ,'" + (Ptype.Value) + "'";
                SQL += "           ,'" + (Pprice.Value) + "'";
                SQL += "           ,'" + (PFeatures.Value) + "'";
                SQL += "           ,'" + (PDetails.Value) + "'";
                SQL += "           ,'" + (Ploc.Value) + "'";
                SQL += "           ,'" + (aname) + "'";
                SQL += "           ,'" + (ptime.Value) + "'";
                SQL += "           ,'" + (id) + "'";
                SQL += "           ,'" + (a) + "'";






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
                Response.Write("<script>alert('Pacakage added Successfully!!!');</script>");
                Response.Write("<script>window.location='managePackages.aspx';</script>");
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