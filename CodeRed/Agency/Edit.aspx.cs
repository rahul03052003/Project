using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeRed.Agency
{
    public partial class Edit : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Request.QueryString["id"].ToString();
            if (!Page.IsPostBack)
            {
                loaddata();
            }

        }
        protected void loaddata()
        {
            try
            {
               con.Open();
              string pPname = "";
              string pPtype = "";
              string pPloc = "";
              string pPprice = "";
              string pPFeatures = "";
              string pPDetails = "";

                string packageid = Request.QueryString["id"].ToString();
                string query = "select * from tbltourpackages where packageid='" + packageid + "'; ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        pPname = dr.GetValue(1).ToString();
                        pPtype = dr.GetValue(2).ToString();
                        pPloc = dr.GetValue(3).ToString();
                        pPprice = dr.GetValue(4).ToString();
                        pPFeatures = dr.GetValue(5).ToString();
                        pPDetails = dr.GetValue(6).ToString();
                        //string stat = dr.GetValue(7).ToString();
                        //string tou = dr.GetValue(4).ToString();

                        //Session["Username"] = dr.GetValue(0).ToString();
                        //Session["Email"] = dr.GetValue(5).ToString();
                        //Session["Phone"] = dr.GetValue(6).ToString();
                        //Response.Redirect("dashboard/home.aspx");

                    }
                }
                Pname.Value = pPname;
                Ptype.Value = pPtype;
                Ploc.Value = pPloc;
                Pprice.Value = pPprice;
                PFeatures.Value = pPFeatures;
                PDetails.Value = pPDetails;
                dr.Close();
            }
            catch
            { }
        }
        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
            string packageid = Request.QueryString["id"].ToString();
            string aname = Session["AgencyName"].ToString();
            string id = Session["Aid"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
            try
            {
                string a = "";
                con.Open();
                Random r = new Random();
                String str = "Usr" + r.Next(123, 9999);
                int pid = r.Next(123, 9999);
                string IPAddress = HttpContext.Current.Request.UserHostAddress;


                if (FileUpload1.HasFile)
                {
                    string path = Server.MapPath(@"../upload/");


                    string extension = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);

                    a = DateTime.Now.ToFileTime() + extension;
                    FileUpload1.SaveAs(path + a);
                    string imgs = path + a;


                    string rquery1 = "update tbltourpackages set  PackageName ='" + Pname.Value + "',[PackageType]='" + Ptype.Value + "',[PackageFetures]='" + PFeatures.Value + "',[PackagePrice]='" + Pprice.Value + "',[PackageDetails]='" + PDetails.Value + "',[PackageLocation]='" + Ploc.Value + "'" +
              ",[PackageImage]='" + a + "' where packageid='" + packageid + "'";
                    SqlCommand cmd1 = new SqlCommand(rquery1, con);
                    cmd1.ExecuteNonQuery();

                    Response.Write("<script>alert('Pacakage Updated Successfully!!!');</script>");
                    Response.Write("<script>window.location='managePackages.aspx';</script>");
                }



                // string ComId = Session["cid"].ToString();




                else
                {



                    string rquery = "update tbltourpackages set  PackageName ='" + Pname.Value + "',[PackageType]='" + Ptype.Value + "',[PackageFetures]='" + PFeatures.Value + "',[PackagePrice]='" + Pprice.Value + "',[PackageDetails]='" + PDetails.Value + "',[PackageLocation]='" + Ploc.Value + "'" +
                        " where packageid='" + packageid + "'";
                    SqlCommand cmd = new SqlCommand(rquery, con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Pacakage Updated Successfully!!!');</script>");
                    Response.Write("<script>window.location='managePackages.aspx';</script>");
                }
            }
            catch (Exception ex)
            {
            }
            finally
            {
                con.Close();
            }



        }
    }
}