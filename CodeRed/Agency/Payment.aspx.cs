using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeRed.Agency
{
    public partial class Payment : System.Web.UI.Page
    {
        
            SqlCommand cmd = new SqlCommand();
            protected void Page_Load(object sender, EventArgs e)
            {
                string id = Session["Aid"].ToString();
                if (Session["Username"] == null)
                {

                    Response.Redirect("../index.aspx");
                }
                Label6.Text = Session["AgencyName"].ToString();
                Label7.Text = Session["Name"].ToString();
                loaddata();
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
                cmd.CommandText = "select p.BookingID, p.NameOnCard, p.CreatedOn,p.Amt, p.TransactionId,p.Amt,a.Aid  from BookingDetails p left join mytour a on p.BookingID=a.BookingID  where a.Aid='" + id + "' ";
                con.Open();
                RepeatInformation.DataSource = cmd.ExecuteReader();
                RepeatInformation.DataBind();
                con.Close();
            }
            [System.Web.Services.WebMethod()]
            public static int ApproveClaim(string ID)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
                con.Open();
                string sql = "";
                sql = "update mytour set Status='Approved'  where BookingID = " + ID;
                SqlCommand cmd = new SqlCommand(sql, con);
                if (cmd.ExecuteNonQuery() > 0)
                    return 1;
                return 0;

                con.Close();
            }

            [System.Web.Services.WebMethod()]
            public static int RejectClaim(string ID)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
                con.Open();
                string sql = "";
                sql = "update mytour set Status='Rejected'  where BookingID = " + ID;
                SqlCommand cmd = new SqlCommand(sql, con);
                if (cmd.ExecuteNonQuery() > 0)
                    return 1;
                return 0;

                con.Close();
            }
        }
    }
