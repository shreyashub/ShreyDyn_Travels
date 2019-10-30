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
    public partial class Intro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                HttpCookie cook = Request.Cookies["Credentials"];
                if (cook != null)
                {
                    Session["UserID"] = cook["username"];
                    if (cook["authority"] == "CUSTOMER")
                    {
                        Response.Redirect("Cust_Home.aspx");
                        Result.Text = cook["username"].ToString();
                    }
                    else if(cook["authority"] == "ADMIN")
                    {
                        Response.Redirect("AdminHome.aspx");
                    }
                }
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=IT_Project;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            con.Open();
            SqlCommand c1 = new SqlCommand("SELECT authority FROM Users WHERE Username=@un and password=@pwd", con);
            c1.Parameters.AddWithValue("@un", id_box.Text);
            c1.Parameters.AddWithValue("@pwd", pass_box.Text);
            SqlDataReader r1 = c1.ExecuteReader();
            if (r1.Read())
            {
                if (r1["Authority"].ToString() == "CUSTOMER")
                {
                    Session["UserID"] = id_box.Text;
                    if (CheckBox1.Checked)
                    {
                        HttpCookie cook = Request.Cookies["Credentials"];
                        if (cook == null)
                        {
                            cook = new HttpCookie("Credentials");
                        }
                        cook["username"] = id_box.Text;
                        cook["password"] = pass_box.Text;
                        cook["authority"] = "CUSTOMER";                        
                        cook.Expires = DateTime.Now.AddDays(15);
                        Response.Cookies.Add(cook);
                    }
                    else
                    {
                        HttpCookie cook = Request.Cookies["Credentials"];
                        if (cook != null)
                        {
                            cook.Expires = DateTime.Now.AddDays(-1);
                            Response.Cookies.Add(cook);
                        }
                    }
                    Response.Redirect("Cust_Home.aspx");
                }
                else
                {
                    Result.Text = "Login as Admin";
                }
            }
            else
            {
                Result.Text = "Incorrect Credentials";
            }
            
            r1.Close();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=IT_Project;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            con.Open();
            SqlCommand c1 = new SqlCommand("SELECT authority FROM Users WHERE Username=@un and password=@pwd", con);
            c1.Parameters.AddWithValue("@un", id_box.Text);
            c1.Parameters.AddWithValue("@pwd", pass_box.Text);
            SqlDataReader r1 = c1.ExecuteReader();
            if (r1.Read())
            {
                if (r1["Authority"].ToString() == "ADMIN")
                {
                    Session["UserID"] = id_box.Text;
                    if (CheckBox1.Checked)
                    {
                        HttpCookie cook = Request.Cookies["Credentials"];
                        if (cook == null)
                        {
                            cook = new HttpCookie("Credentials");
                        }
                        cook["username"] = id_box.Text;
                        cook["password"] = pass_box.Text;
                        cook["authority"] = "ADMIN";
                        cook.Expires = DateTime.Now.AddDays(5);
                        Response.Cookies.Add(cook);
                    }
                    else
                    {
                        HttpCookie cook = Request.Cookies["Credentials"];
                        if (cook != null)
                        {
                            cook.Expires = DateTime.Now.AddDays(-1);
                            Response.Cookies.Add(cook);
                        }
                    }
                    Response.Redirect("AdminHome.aspx");
                }
                else
                {
                    Result.Text = "Login as User";
                }
            }
            else
            {
                Result.Text = "Incorrect Credentials";
            }
            r1.Close();
            con.Close();
        }
    }
}