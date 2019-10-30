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
    public partial class Ad_BusRemove : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=IT_Project;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            con.Open();

            
            command = new SqlCommand("Delete from Bus where BusID=@bid", con);
            command.Parameters.AddWithValue("@bid", DropDownList1.Text);
            int ab = command.ExecuteNonQuery();
            if (ab > 0) { Result.Text = "Yayy"; }
            else { Result.Text = "No!!"; }
            con.Close();
            DropDownList1.DataBind();
        }
    }
}