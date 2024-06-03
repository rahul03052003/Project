using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeRed.Agency
{
    public partial class ManageBooking : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("../index.aspx");
            }

            Label6.Text = Session["AgencyName"].ToString();
            Label7.Text = Session["Name"].ToString();

            if (!Page.IsPostBack)
            {
                loaddata();
            }
        }

        private void loaddata()
        {
            string id = Session["Aid"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            cmd.Connection = con;
            cmd.CommandText = "SELECT p.BookingID, p.PackageName, p.PackageId, p.Fdate, p.Ldate, p.Status, p.Amt, p.Timg, p.CreationDate, a.Name, a.phone " +
                              "FROM mytour p LEFT JOIN userid a ON p.Uid = a.id " +
                              "WHERE p.Aid = @Aid";
            cmd.Parameters.AddWithValue("@Aid", id);
            con.Open();
            RepeatInformation.DataSource = cmd.ExecuteReader();
            RepeatInformation.DataBind();
            con.Close();
        }

        [System.Web.Services.WebMethod()]
        public static int ApproveClaim(string ID)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            string userEmail = "";
            string agencyName = HttpContext.Current.Session["AgencyName"].ToString();
            string userName = HttpContext.Current.Session["Username"].ToString();

            try
            {
                con.Open();
                SqlCommand getUserEmailCmd = new SqlCommand("SELECT u.Email FROM mytour p JOIN userid u ON p.Uid = u.id WHERE p.BookingID = @BookingID", con);
                getUserEmailCmd.Parameters.AddWithValue("@BookingID", ID);
                SqlDataReader reader = getUserEmailCmd.ExecuteReader();
                if (reader.Read())
                {
                    userEmail = reader["Email"].ToString();
                }
                reader.Close();

                SqlCommand updateCmd = new SqlCommand("UPDATE mytour SET Status = 'Approved' WHERE BookingID = @BookingID", con);
                updateCmd.Parameters.AddWithValue("@BookingID", ID);
                if (updateCmd.ExecuteNonQuery() > 0)
                {
                    try
                    {
                        MailMessage mail = new MailMessage("localhosthost670@gmail.com", userEmail, "Booking Confirmation!", 
                            "Dear User! Your Booking has been Confirmed :: Details are here !!\n Your User name: " + userName + "\n Your Agency Name: " + agencyName + "\n Booking ID: " + ID + "\nCheck user dashboard");
                        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587)
                        {
                            EnableSsl = true,
                            UseDefaultCredentials = false,
                            Credentials = new System.Net.NetworkCredential("localhosthost670@gmail.com", "uykpqxbpbuaamkom")
                        };
                        smtp.Send(mail);
                        Console.WriteLine("Mail Sent");
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Mail Error: " + ex.Message);
                    }
                    return 1;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("DB Error: " + ex.Message);
            }
            finally
            {
                con.Close();
            }
            return 0;
        }

        [System.Web.Services.WebMethod()]
        public static int RejectClaim(string ID)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            string userEmail = "";

            try
            {
                con.Open();
                SqlCommand getUserEmailCmd = new SqlCommand("SELECT u.Email FROM mytour p JOIN userid u ON p.Uid = u.id WHERE p.BookingID = @BookingID", con);
                getUserEmailCmd.Parameters.AddWithValue("@BookingID", ID);
                SqlDataReader reader = getUserEmailCmd.ExecuteReader();
                if (reader.Read())
                {
                    userEmail = reader["Email"].ToString();
                }
                reader.Close();

                SqlCommand updateCmd = new SqlCommand("UPDATE mytour SET Status = 'Rejected' WHERE BookingID = @BookingID", con);
                updateCmd.Parameters.AddWithValue("@BookingID", ID);
                if (updateCmd.ExecuteNonQuery() > 0)
                {
                    try
                    {
                        MailMessage mail = new MailMessage("localhosthost670@gmail.com", userEmail, "Booking Rejection", 
                            "Dear User! Your Booking has been Rejected.\n Booking ID: " + ID + "\nPlease contact support for more details.");
                        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587)
                        {
                            EnableSsl = true,
                            UseDefaultCredentials = false,
                            Credentials = new System.Net.NetworkCredential("localhosthost670@gmail.com", "uykpqxbpbuaamkom")
                        };
                        smtp.Send(mail);
                        Console.WriteLine("Mail Sent");
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Mail Error: " + ex.Message);
                    }
                    return 1;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("DB Error: " + ex.Message);
            }
            finally
            {
                con.Close();
            }
            return 0;
        }
    }
}
