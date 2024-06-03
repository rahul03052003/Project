using System;
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
    public partial class View_Details : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand(); SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Request.QueryString["id"].ToString();
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
            cmd.CommandText = "select p.PackageName, p.Packagetype, p.PackageLocation,p.PackagePrice, p.PackageFetures,p.PackageDetails,p.PackageImage,p.Ptime,p.CreationDate,a.AgencyName,a.phone  from tbltourpackages p left join Agency a on p.Aid=a.id  where p.packageId='"+ packageid + "' ";
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
                string query = "select * from userid where email='" + email.Value + "' and pswd='" + pass.Value + "'; ";
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
                else
                {
                    Response.Write("<script>alert('Invalid User!!!');</script>");
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