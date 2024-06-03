using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web;
using System.Web.UI;

namespace CodeRed
{
    public partial class Enquiry : System.Web.UI.Page
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
                string rquery = "INSERT INTO contactUs (Name, email, Subj, MSG) VALUES (@Name, @Email, @Subj, @MSG)";
                SqlCommand cmd = new SqlCommand(rquery, con);
                cmd.Parameters.AddWithValue("@Name", name.Value);
                cmd.Parameters.AddWithValue("@Email", email.Value);
                cmd.Parameters.AddWithValue("@Subj", msg_subject.Value);
                cmd.Parameters.AddWithValue("@MSG", msg.Value);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Thank you for Submitting Your Message!!!');</script>");
                Response.Write("<script>window.location='index.aspx';</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Something Went Wrong. Please Try again later...!!!');</script>");
            }
            finally
            {
                con.Close();
            }
        }

        [System.Web.Services.WebMethod()]
        public static int AcceptEnquiry(string ID)
        {
            return UpdateEnquiryStatus(ID, "Accepted");
        }

        [System.Web.Services.WebMethod()]
        public static int RejectEnquiry(string ID)
        {
            return UpdateEnquiryStatus(ID, "Rejected");
        }

        private static int UpdateEnquiryStatus(string ID, string status)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            string userEmail = "";

            try
            {
                con.Open();
                SqlCommand getUserEmailCmd = new SqlCommand("SELECT email FROM contactUs WHERE EnquiryID = @EnquiryID", con);
                getUserEmailCmd.Parameters.AddWithValue("@EnquiryID", ID);
                SqlDataReader reader = getUserEmailCmd.ExecuteReader();
                if (reader.Read())
                {
                    userEmail = reader["email"].ToString();
                }
                reader.Close();

                SqlCommand updateCmd = new SqlCommand("UPDATE contactUs SET Status = @Status WHERE EnquiryID = @EnquiryID", con);
                updateCmd.Parameters.AddWithValue("@Status", status);
                updateCmd.Parameters.AddWithValue("@EnquiryID", ID);
                if (updateCmd.ExecuteNonQuery() > 0)
                {
                    try
                    {
                        string subject = "Enquiry " + status;
                        string body = $"Dear User,\n\nYour enquiry has been {status.ToLower()}.\n\nThank you for reaching out to us.\n\nBest regards,\nCodeRed Team";

                        MailMessage mail = new MailMessage("your-email@gmail.com", userEmail, subject, body);
                        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587)
                        {
                            EnableSsl = true,
                            UseDefaultCredentials = false,
                            Credentials = new System.Net.NetworkCredential("your-email@gmail.com", "your-email-password")
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
