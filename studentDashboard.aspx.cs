using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class studentDashboard : System.Web.UI.Page
{
    string constring = "Data Source=DESKTOP-NGVV66H;Initial Catalog=PSC;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null && Session["type"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (Session["username"] != null && Session["type"].ToString() == "admin")
        {
            Response.Redirect("adminDashboard.aspx");
        }
        else if (Session["username"] != null && Session["type"].ToString() == "councellor")
        {
            Response.Redirect("counsellorDashboard.aspx");
        }
        string userId = Session["username"].ToString();
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
            sqcm.CommandText = "select*from students where studentId='" + userId + "'"; 
        SqlDataReader adp = sqcm.ExecuteReader();
        if (adp.HasRows)
        {
            while (adp.Read())
            {
                username.Text = adp[0].ToString();
                fullname.Text = adp[1].ToString();
                educcation.Text = adp[2].ToString();
                address.Text = adp[3].ToString();
                Contactno.Text = adp[4].ToString();
                Email.Text = adp[5].ToString();

            }

        }
    }
}