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
    public partial class manageenquires : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Session["Aid"].ToString();
            if (Session["Username"] == null)
            {

                Response.Redirect("../index.aspx");
            }
            loaddata();
            Label6.Text = Session["AgencyName"].ToString();
            Label7.Text = Session["Name"].ToString();
            //string ComId = Session["cid"].ToString();
            if (!Page.IsPostBack)
            {
                loaddata();
            }
        }
        private void loaddata()
        {
            string id = Session["Aid"].ToString();
            //string ComId = Session["cid"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            cmd.Connection = con;
            cmd.CommandText = "select * from contactUs ";
            con.Open();
            RepeatInformation.DataSource = cmd.ExecuteReader();
            RepeatInformation.DataBind();
            con.Close();
        }
        [System.Web.Services.WebMethod()]
        public static int ApproveClaim(string ID)
        {

            string id = HttpContext.Current.Session["Aid"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            con.Open();


            string Email = "";
            string query = "select * from contactUs where id='" + ID + "'; ";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Email = dr.GetValue(1).ToString();

                }
            }
            dr.Close();



            string sql = "";
            sql = "update contactUs set Status='Approved', Aid='" + id + "'  where ID = " + ID;
            cmd = new SqlCommand(sql, con);
            if (cmd.ExecuteNonQuery() > 0)
                try
                {
                    MailMessage m = new MailMessage("localhosthost670@gmail.com", Email, "Confirmation Mail !!!", "​Your Requested Package has been Added Please Visit Our Portal And Start Booking");
                    SmtpClient s = new SmtpClient("smtp.gmail.com", 587);
                    s.Credentials = new System.Net.NetworkCredential("localhosthost670@gmail.com", "uykpqxbpbuaamkom");
                    s.EnableSsl = true;
                    s.Send(m);

                

                }
                catch
                {
                }
            return 1;


            con.Close();
        }

        [System.Web.Services.WebMethod()]
        public static int RejectClaim(string ID)
        {
            string id = HttpContext.Current.Session["Aid"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            con.Open();


            string Email = "";
            string query = "select * from contactUs where id='" + ID + "'; ";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Email = dr.GetValue(1).ToString();

                }
            }
            dr.Close();


            string sql = "";
            sql = "update contactUs set Status='Rejected', Aid='" + id + "'  where ID = " + ID;
            SqlCommand cmd1 = new SqlCommand(sql, con);
            if (cmd1.ExecuteNonQuery() > 0)
            {
                try
                {
                    MailMessage m = new MailMessage("localhosthost670@gmail.com", Email, "Rejection Mail !!!", "​Your Requested Package has been Rejected.");
                    SmtpClient s = new SmtpClient("smtp.gmail.com", 587);
                    s.Credentials = new System.Net.NetworkCredential("localhosthost670@gmail.com", "uykpqxbpbuaamkom");
                    s.EnableSsl = true;
                    s.Send(m);



                }
                catch
                {
                }
            }
                return 1;
            return 0;


        }
    }
}