using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeRed.dashboard
{
    public partial class TourPackages : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loaddata();
                loaddrop();
                loaddrop2();
            }
        }
      
        private void loaddata()
        {
            //string ComId = Session["cid"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            cmd.Connection = con;
            cmd.CommandText = "select * from tbltourpackages";
            con.Open();
            grid.DataSource = cmd.ExecuteReader();
            grid.DataBind();
            //Repeater1.DataSource = cmd.ExecuteReader();
            //Repeater1.DataBind();
            con.Close();
        }
        private void loaddrop()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            string com = "Select * from tbltourpackages";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();

            DropDownList1.DataTextField = "PackageLocation";
            DropDownList1.DataValueField = "PackageLocation";
            DropDownList1.DataBind();
        }

        private void loaddrop2()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            string com = "Select * from tbltourpackages";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList2.DataSource = dt;
            DropDownList2.DataBind();
          
            DropDownList2.DataTextField = "PackageType";
            DropDownList2.DataValueField = "PackageType";
            DropDownList2.DataBind();
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            cmd.Connection = con;
            cmd.CommandText = "select * from tbltourpackages where PackageType like '%" + DropDownList2.SelectedValue+ "%' or PackageLocation like '%" + DropDownList1.SelectedValue + "%' ";
            con.Open();
            grid.DataSource = cmd.ExecuteReader();
            grid.DataBind();
            //Repeater1.DataSource = cmd.ExecuteReader();
            //Repeater1.DataBind();
            con.Close();
        }
    }
}