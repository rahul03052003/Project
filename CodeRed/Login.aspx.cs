using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeRed
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            if (email.Value.Equals("admin@gmail.com", StringComparison.OrdinalIgnoreCase) && pswd.Value.Equals("admin", StringComparison.OrdinalIgnoreCase))
            {
                Session["Username"] = "admin";
                Response.Redirect("admin/index.aspx");
            }
            else
            {
                int cnt=0;
                string sql2 = "select * from userid where email='" + email.Value + "' and pswd='" + pswd.Value + "'";



                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(sql2, con);
                    Int32 count = Convert.ToInt32(cmd.ExecuteScalar());
                    cnt = count;
                    cmd.Dispose();
                    con.Close();

                }
                catch (Exception ex)
                {

                }
                if (cnt > 0)
                {
                    try
                    {
                        con.Open();
                        string query = "select * from userid where email='" + email.Value + "' and pswd='" + pswd.Value + "'; ";
                        SqlCommand cmd = new SqlCommand(query, con);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                Session["Username"] = dr.GetValue(1).ToString();
                                Session["uid"] = dr.GetValue(0).ToString();
                                //string pd = dr.GetValue(1).ToString();
                                //string stat = dr.GetValue(7).ToString();
                                //string tou = dr.GetValue(4).ToString();

                                //Session["Username"] = dr.GetValue(0).ToString();
                                //Session["Email"] = dr.GetValue(5).ToString();
                                //Session["Phone"] = dr.GetValue(6).ToString();
                                Response.Redirect("dashboard/index.aspx");

                            }
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
                else
                {
                    con.Open();
                    string query = "select * from Agency where email='" + email.Value + "' and pswd='" + pswd.Value + "'; ";
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Session["Username"] = email.Value;
                            Session["aid"] = dr.GetValue(0).ToString();
                            Session["AgencyName"] = dr.GetValue(7).ToString();
                            Session["Name"] = dr.GetValue(1).ToString();

                            //string stat = dr.GetValue(7).ToString();
                            //string tou = dr.GetValue(4).ToString();

                            //Session["Username"] = dr.GetValue(0).ToString();
                            Session["Email"] = dr.GetValue(2).ToString();
                            //Session["Phone"] = dr.GetValue(6).ToString();
                            Response.Redirect("Agency/index.aspx");

                        }
                      
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid User!!!');</script>");
                    }
                    con.Close();
                }
               
            }
        }
    }
}





