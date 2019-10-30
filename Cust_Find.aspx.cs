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
    public partial class Cust_Find : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                FromList.Items.Insert(0, new ListItem("Select City", String.Empty));
                FromList.SelectedIndex = 0;
                ToList.Items.Insert(0, new ListItem("Select City", String.Empty));
                ToList.SelectedIndex = 0;
                CompanyList.Items.Insert(0, new ListItem("Any", String.Empty));
                CompanyList.SelectedIndex = 0;
                DTDownList.Items.Insert(0, new ListItem("Any", String.Empty));
                DTDownList.SelectedIndex = 0;
                ATDownList.Items.Insert(0, new ListItem("Any", String.Empty));
                ATDownList.SelectedIndex = 0;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand command;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=IT_Project;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            con.Open();

         
            command = new SqlCommand("Insert into Booking(IDBus,Nameuser) values ( @bid,@uid)", con);
            command.Parameters.AddWithValue("@bid", Int32.Parse(GridView1.SelectedRow.Cells[1].Text));
            command.Parameters.AddWithValue("@uid", "sks");
            int ab = command.ExecuteNonQuery();
            if (ab > 0) { 
                command = new SqlCommand("Update Bus set capacity=capacity-1 where BusID=@bid", con);
                command.Parameters.AddWithValue("@bid", Int32.Parse(GridView1.SelectedRow.Cells[1].Text));
                ab = command.ExecuteNonQuery();
                if (ab > 0) { Result.Text = "Booking Succesful!";
                }
            }
            else { Result.Text = "Booking Failed. Please Try Again"; }
            GridView1.DataBind();
            con.Close();
        }
    }
}