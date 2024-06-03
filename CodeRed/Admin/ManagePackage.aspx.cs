using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace CodeRed.Admin
{
    public partial class ManagePackage : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //if (Session["Username"] == null)
            //{

            //    Response.Redirect("../index.aspx");
            //}
            //loaddata();
            //Label6.Text = Session["AgencyName"].ToString();
            //Label7.Text = Session["Name"].ToString();
            ////string ComId = Session["cid"].ToString();
            if (!Page.IsPostBack)
            {
                loaddata();
            }
        }
        private void loaddata()
        {
           
            //string ComId = Session["cid"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            cmd.Connection = con;
            cmd.CommandText = "select * from tbltourpackages ";
            con.Open();
            RepeatInformation.DataSource = cmd.ExecuteReader();
            RepeatInformation.DataBind();
            con.Close();
        }
    }
}