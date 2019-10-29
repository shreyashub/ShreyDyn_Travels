using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ShrDynTravels
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void verify_signup(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=Project;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            con.Open();
            SqlCommand c1 = new SqlCommand("SELECT username FROM Users WHERE Username=@un", con);
            c1.Parameters.AddWithValue("@un", uname.Text);
            SqlDataReader r1 = c1.ExecuteReader();
            if (r1.Read())
            {
                msg.Text = "ERROR!!! USERNAME ALREADY EXISTS!!!";
                r1.Close();
            }
            else if (Page.IsValid)
            {
                r1.Close();
                SqlCommand c2 = new SqlCommand("INSERT INTO Users(Username, Password, Name, Email, Authority) VALUES(@un, @pw, @na, @em, @au)", con);
                c2.Parameters.AddWithValue("@un", uname.Text);
                c2.Parameters.AddWithValue("@pw", pword.Text);
                c2.Parameters.AddWithValue("@na", name.Text);
                c2.Parameters.AddWithValue("@em", email.Text);
                c2.Parameters.AddWithValue("@au", auth.SelectedItem.Text);
                SqlDataReader r2 = c2.ExecuteReader();
                msg.Text = "Details stored successfully!!!";
                r2.Close();
            }
            else
                msg.Text = "";
            con.Close();
        }
    }
}