using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ShreyDynTravels
{
    public partial class Cust_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=IT_Project;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            con.Open();
            SqlCommand c1 = new SqlCommand("SELECT name FROM Users WHERE Username=@un", con);
            c1.Parameters.AddWithValue("@un", Session["UserID"]);
            SqlDataReader r1 = c1.ExecuteReader();
            r1.Read();
            Label1.Text = "Hello, " + r1["name"].ToString();
            r1.Close();
            con.Close();
        }
    }
}