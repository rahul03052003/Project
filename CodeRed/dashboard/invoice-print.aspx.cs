using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeRed.dashboard
{
    public partial class invoice_print : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        protected void Page_Load(object sender, EventArgs e)
        {

            var dateAndTime = DateTime.Now;
            Label1.Text = dateAndTime.Date.ToString();
            Lab.Text = dateAndTime.Date.ToString();
            string BookingId = "";
            string uid = "";
            //if (Request.Cookies["BookingID"] == null)
            //{

            //}
            //else
            //{
            //    BookingId = Request.Cookies["BookingID"].Value;

            //    uid = Request.Cookies["UserID"].Value;
            //}

             BookingId = Request.QueryString["id"].ToString();
            uid = Session["Uid"].ToString();
            try
            {

                con.Open();
                //string packageid = Request.QueryString["id"].ToString();
                string query = "select * from userid where Id='" + uid + "'; ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        uname.Text = dr.GetValue(1).ToString();
                        uemail.Text = dr.GetValue(2).ToString();
                        uphn.Text = dr.GetValue(3).ToString();
                        //string stat = dr.GetValue(7).ToString();
                        //string tou = dr.GetValue(4).ToString();

                        //Session["Username"] = dr.GetValue(0).ToString();
                        //Session["Email"] = dr.GetValue(5).ToString();
                        //Session["Phone"] = dr.GetValue(6).ToString();
                        //Response.Redirect("dashboard/home.aspx");
                    }
                }

                dr.Close();
            }
            catch
            {

            }












            try
            {


                //string packageid = Request.QueryString["id"].ToString();
                string query = "select * from mytour where BookingId='" + BookingId + "'; ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        pname.Text = dr.GetValue(1).ToString();
                        fdate.Text = dr.GetValue(2).ToString();
                        Tdate.Text = dr.GetValue(3).ToString();
                        price.Text = dr.GetValue(11).ToString();
                        Label2.Text = dr.GetValue(11).ToString();
                        Label3.Text = dr.GetValue(11).ToString();
                        //string stat = dr.GetValue(7).ToString();
                        //string tou = dr.GetValue(4).ToString();

                        //Session["Username"] = dr.GetValue(0).ToString();
                        //Session["Email"] = dr.GetValue(5).ToString();
                        //Session["Phone"] = dr.GetValue(6).ToString();
                        //Response.Redirect("dashboard/home.aspx");
                    }
                }
                con.Close();
                dr.Close();
            }
            catch
            {

            }
        }
    }
}