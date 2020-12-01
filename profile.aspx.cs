using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profile : System.Web.UI.Page
{
    string constring = "Data Source=DESKTOP-NGVV66H;Initial Catalog=PSC;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        string _userId = Request.Cookies["user"].Value;
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        if (_userId.ToLower().Contains("std"))
        {
            sqcm.CommandText = "select*from students where studentId='" + _userId + "'";

        }
        else if (_userId.ToLower().Contains("crs"))
        {
            sqcm.CommandText = "select*from Councellors where conId='" + _userId + "'";
            
        }
        SqlDataReader adp = sqcm.ExecuteReader();
        if (adp.HasRows)
        {
            while (adp.Read())
            {
                username.Text = adp[0].ToString();
                profileName.Text= adp[1].ToString()+" ";
                fullname.Text = adp[1].ToString();
                educcation.Text = adp[2].ToString();
                address.Text = adp[3].ToString();
                Contactno.Text = adp[4].ToString();
                Email.Text = adp[5].ToString();

            }

        }
    }
}