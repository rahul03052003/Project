using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeRed.dashboard
{
    public partial class Pay : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        string PackageName = "";
        string Amt = "";
        string PackageID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string BookingId = Request.QueryString["id"].ToString();
                con.Open();



                string packageid = Request.QueryString["id"].ToString();
                string query = "select * from mytour where BookingId='" + packageid + "'; ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        PackageName = dr.GetValue(1).ToString();
                        Amt = dr.GetValue(11).ToString();
                        PackageID = dr.GetValue(0).ToString();
                        //string stat = dr.GetValue(7).ToString();
                        //string tou = dr.GetValue(4).ToString();

                        //Session["Username"] = dr.GetValue(0).ToString();
                        //Session["Email"] = dr.GetValue(5).ToString();
                        //Session["Phone"] = dr.GetValue(6).ToString();
                        //Response.Redirect("dashboard/home.aspx");

                    }
                }
                con.Close();
                Label1.Text = PackageName;
                Label2.Text = Amt;
              
                dr.Close();
            }
            catch
            {

            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
           
            try
            {
                string BookingId = Request.QueryString["id"].ToString();
                con.Open();
                Random r = new Random();
                int num = r.Next(99, 9999);
                int tr = r.Next(99, 99999999);
                string rquery = "insert into BookingDetails(Id,Fname,NameOnCard,BookingID,Amt,TransactionId,Uid) values('" + num + "','" + fname.Value + "','" + nameoncard.Value + "','" + BookingId + "','"+ Amt + "','" + tr + "','" + Session["Uid"].ToString() +"') ";
                SqlCommand cmd = new SqlCommand(rquery, con);
                cmd.ExecuteNonQuery();


                string rquery1 = "update mytour set PayStatus='1' where BookingID='"+ BookingId + "' ";
                cmd = new SqlCommand(rquery1, con);
                cmd.ExecuteNonQuery();

                try
                {
                    //MailMessage m = new MailMessage("cloudscomputing<script>document.write(new Date().getFullYear());</script> @gmail.com", email.Value, "Welcome Mail !!!", "​Welcome to the Online Bidding application !!!\n Your Username is: " + uname.Value + "\n Your Password is: " + pswd.Value + "\n. please wait for the admin approval");
                    //SmtpClient s = new SmtpClient("smtp.gmail.com", 587);
                    //s.Credentials = new System.Net.NetworkCredential("cloudscomputing<script>document.write(new Date().getFullYear());</script> @gmail.com", "cloud@123");
                    //s.EnableSsl = true;
                    //s.Send(m);
                }
                catch
                {
                }
                Response.Cookies["BookingID"].Value = BookingId;
                Response.Cookies["BookingID"].Expires = DateTime.Now.AddMinutes(60);

                Response.Cookies["UserID"].Value = Session["Uid"].ToString();
                Response.Cookies["UserID"].Expires = DateTime.Now.AddMinutes(60);

                Response.Write("<script>alert('Payment Successfully Done!!!');</script>");

                //Response.Write("<script>window.location='invoice.aspx;</script>");
                //Resetter();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Something went wrong!!!');</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }
}