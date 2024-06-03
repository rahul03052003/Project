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
    public partial class payments : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["Username"].ToString();
            if (!Page.IsPostBack)
            {
                loaddata();
            }




        }

        private void loaddata()
        {
            //string ComId = Session["cid"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from BookingDetails where uid='" + Session["Uid"].ToString() + "'";

            con.Open();
            grid.DataSource = cmd.ExecuteReader();
            grid.DataBind();
            con.Close();
        }
    }
}