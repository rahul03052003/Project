using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeRed.dashboard
{
    public partial class View_Details : System.Web.UI.Page
    {
        string uid = "";
        SqlCommand cmd = new SqlCommand(); SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Request.QueryString["id"].ToString();
             uid = Session["uid"].ToString();
            if (!Page.IsPostBack)
            {
                loaddata();
            }
        }
        private void loaddata()
        {
            string packageid = Request.QueryString["id"].ToString();
            //string ComId = Session["cid"].ToString();

            cmd.Connection = con;
            cmd.CommandText = "select p.PackageName, p.Packagetype, p.PackageLocation,p.PackagePrice, p.PackageFetures,p.PackageDetails,p.PackageImage,p.CreationDate,a.AgencyName,a.phone  from tbltourpackages p left join Agency a on p.Aid=a.id  where p.packageId='" + packageid + "' ";
            con.Open();
            RepeatInformation.DataSource = cmd.ExecuteReader();
            RepeatInformation.DataBind();
            con.Close();
        }
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                string PackageName = "";
                string Aid = "";
                string PackageID = "";
                string PackagePrice = "";
                string PackageImage = "";

                string packageid = Request.QueryString["id"].ToString();
                string query = "select * from tbltourpackages where packageid='" + packageid + "'; ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        PackageName = dr.GetValue(1).ToString();
                        Aid = dr.GetValue(11).ToString();
                        PackageID = dr.GetValue(0).ToString();
                        PackagePrice = dr.GetValue(4).ToString();
                        PackageImage = dr.GetValue(7).ToString();
                        //string stat = dr.GetValue(7).ToString();
                        //string tou = dr.GetValue(4).ToString();

                        //Session["Username"] = dr.GetValue(0).ToString();
                        //Session["Email"] = dr.GetValue(5).ToString();
                        //Session["Phone"] = dr.GetValue(6).ToString();
                        //Response.Redirect("dashboard/home.aspx");

                    }
                }
                dr.Close();



                string aa = strDate.Value;
                Random r = new Random();
                int num = r.Next(99, 9999);
                string rquery = "insert into mytour(BookingID,PackageName,Uid,Aid,PackageID,Status,Fdate,Ldate,Amt,Timg) values('" + num + "','" + PackageName + "','" + uid + "','"+ Aid + "','"+ PackageID + "','Pending','"+strDate.Value+"','"+ldate.Value+"','"+ PackagePrice + "','"+ PackageImage + "') ";
                 cmd = new SqlCommand(rquery, con);
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
                Response.Write("<script>alert('Your trip is Booked, Once the Agency Confirmed Your Booking Please Vist Your Dashboard and Finish the Payment Process.!!!');</script>");

                Response.Write("<script>window.location='Index.aspx';</script>");
                //Resetter();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Something Went Wrong, Please Try again later...!!!');</script>");
            }
            finally
            {
                con.Close();
            }
        }

    }
    }