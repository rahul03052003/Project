using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeRed.dashboard
{
    public partial class profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        protected void Page_Load(object sender, EventArgs e)
        {

           
            if (!Page.IsPostBack)
            {
                loadData();
            }
        }
        private void loadData()
        {
            try
            {
                string nmname = "";
                string phon = "";
                string emailid = "";

                con.Open();
                string query = "select * from userid where id='" + Session["uid"].ToString() + "'; ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        nmname = dr.GetValue(1).ToString();
                        phon = dr.GetValue(3).ToString();
                        emailid = dr.GetValue(2).ToString();


                    }
                }

                dr.Close();
                uname.Value = nmname;
                phn.Value = phon;
                email.Value = emailid;
                Label1.Text = nmname;
            }

            catch
            {
            }
            finally
            {
                con.Close();
            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            try
            {
                con.Open();
                Random r = new Random();
                int num = r.Next(99, 9999);
                string rquery = "update userid set Name='" + uname.Value + "',email='" + email.Value + "',phone='" + phn.Value + "' where id='" + Session["uid"].ToString() +"' ";
                SqlCommand cmd = new SqlCommand(rquery, con);
                cmd.ExecuteNonQuery();


                Response.Write("<script>alert('Profile Updated!!!');</script>");

                Response.Write("<script>window.location='profile.aspx';</script>");
            }
            catch
            {

            }
        }

        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
            try
            {
                string pd = "";
                string un = "";
                con.Open();
                string query = "select * from userid where id='" + Session["uid"].ToString() + "' and pswd='"+opswd.Value+"'; ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        //Session["Username"] = dr.GetValue(1).ToString();
                        //Session["uid"] = dr.GetValue(0).ToString();
                        pd = dr.GetValue(4).ToString();
                        un = dr.GetValue(1).ToString();
                    

                    }
                    dr.Close();
                    string q = "update userid set pswd='" + npswd.Value + "' where id='" + Session["uid"].ToString() + "'";
                    SqlCommand cmd1 = new SqlCommand(q, con);
                    cmd1.ExecuteNonQuery();
                    Response.Write("<script>window.location='../index.aspx';</script>");
                }
            
                else
                {
                    Response.Write("<script>alert('Invalid password!!!');</script>");
                }

            }
            catch
            {
            }
            finally
            {
                con.Close();
            }
        }
    }
}
