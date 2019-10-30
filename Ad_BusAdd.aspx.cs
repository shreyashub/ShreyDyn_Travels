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
    public partial class Ad_BusAdd : System.Web.UI.Page
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
    
            String sql = "";
            sql = "Insert into Bus(StartLoc,EndLoc,Owner,Capacity,StartTime,EndTime,Cost,DoJ) values ( @SL,@EL,@own,@cap,@ST,@ET,@cost,@date )";
            command = new SqlCommand("Insert into Bus(StartLoc,EndLoc,Owner,Capacity,StartTime,EndTime,Cost,DoJ) values ( @SL,@EL,@own,@cap,@ST,@ET,@cost,@date )", con);
            command.Parameters.AddWithValue("@SL",SL.Text);
            command.Parameters.AddWithValue("@EL",EL.Text);
            command.Parameters.AddWithValue("@own",Comp.Text);
            command.Parameters.AddWithValue("@cap", Int32.Parse(Cap.Text));
            command.Parameters.AddWithValue("@ST",ST.Text);
            command.Parameters.AddWithValue("@ET",ET.Text);
            command.Parameters.AddWithValue("@cost", Int32.Parse(cost.Text));
            command.Parameters.AddWithValue("@date",Calendar1.SelectedDate);
            int ab=command.ExecuteNonQuery();
            if (ab > 0) { Result.Text = "Yayy"; }
            else { Result.Text = "No!!"; }
		    con.Close();
        }
    }
}