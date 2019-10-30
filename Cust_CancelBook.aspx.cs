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
    public partial class Cust_CancelBook : System.Web.UI.Page
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
            string bus="";
            command = new SqlCommand("Select IDBus from Booking where BkID=@bid", con);
            command.Parameters.AddWithValue("@bid", DropDownList1.Text);
            SqlDataReader r1 = command.ExecuteReader();
            if (r1.Read())
            {
                bus = r1["IDBus"].ToString();
            }
            r1.Close();
            command = new SqlCommand("Delete from Booking where BkID=@bid", con);
            command.Parameters.AddWithValue("@bid", DropDownList1.Text);
            int ab = command.ExecuteNonQuery();
            if (ab > 0) {
                
                command = new SqlCommand("Update Bus set capacity=capacity+1 where BusID=@bid", con);
                command.Parameters.AddWithValue("@bid",bus);
                ab = command.ExecuteNonQuery();
                if (ab > 0)
                {
                    Result.Text = "Cancellation Succesful!";
                }
            }
            else { Result.Text = "Cancellation Unsuccesful. Please try again"; }
            con.Close();
            DropDownList1.DataBind();
        }
    }
}