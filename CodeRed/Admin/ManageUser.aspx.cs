﻿using System;
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
    public partial class ManageUser : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["Username"] == null)
            {

                Response.Redirect("../index.aspx");
            }
           
            Label6.Text = "Admin";
            Label7.Text = "Admin";
            //string ComId = Session["cid"].ToString();
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
            cmd.CommandText = "select * from userid ";
            con.Open();
            RepeatInformation.DataSource = cmd.ExecuteReader();
            RepeatInformation.DataBind();
            con.Close();
        }
        //[System.Web.Services.WebMethod()]
        //public static int ApproveClaim(string ID)
        //{
        //    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
        //    con.Open();
        //    string sql = "";
        //    sql = "update mytour set Status='Approved'  where BookingID = " + ID;
        //    SqlCommand cmd = new SqlCommand(sql, con);
        //    if (cmd.ExecuteNonQuery() > 0)
        //        return 1;
        //    return 0;

        //    con.Close();
        //}

        [System.Web.Services.WebMethod()]
        public static int RejectClaim(string ID)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            con.Open();
            string sql = "";
            sql = "delete from userid  where id = " + ID;
            SqlCommand cmd = new SqlCommand(sql, con);
            if (cmd.ExecuteNonQuery() > 0)
                return 1;
            return 0;

            con.Close();
        }
    }
}