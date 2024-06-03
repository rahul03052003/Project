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
    public partial class managePackages : System.Web.UI.Page
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
            cmd.CommandText = "select * from tbltourpackages where Aid='"+id+"'";
            con.Open();
            RepeatInformation.DataSource = cmd.ExecuteReader();
            RepeatInformation.DataBind();
            con.Close();
        }
        [System.Web.Services.WebMethod()]
        public static int deleteClaim(string ID)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            con.Open();
            string sql = "";
            sql = "Delete from tbltourpackages where PackageId = " + ID;
            SqlCommand cmd = new SqlCommand(sql, con);

            if (cmd.ExecuteNonQuery() > 0)
                con.Close();
            return 1;
            return 0;

    
        }


    }
}