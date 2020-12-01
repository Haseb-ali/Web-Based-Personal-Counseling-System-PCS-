using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class counsellorDashboard : System.Web.UI.Page
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
        else if (Session["username"] != null && Session["type"].ToString() == "student")
        {
            Response.Redirect("studentDashboard.aspx");
        }
        string userId = Session["username"].ToString();
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        sqcm.CommandText = "select*from Councellors where conId='" + userId + "'";
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

    protected void updateContactInfo_Click(object sender, EventArgs e)
    {
        if (Contactnoup.Text=="")
        {
            return;
        }
        string contactNo = Contactnoup.Text;
        string userId = Session["username"].ToString();
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        sqcm.CommandText = "update Councellors set conContactNo='" + contactNo + "' where conId='" + userId + "'";
        sqcm.ExecuteNonQuery();
        Page_Load(sender, e);
        Contactnoup.Text = "";


    }

    protected void updateEmail_Click(object sender, EventArgs e)
    {
        if (Emailup.Text == "")
        {
            return;
        }
        string emil = Emailup.Text;
        string userId = Session["username"].ToString();
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        sqcm.CommandText = "update Councellors set conEmail='" + emil + "' where conId='" + userId + "'";
        sqcm.ExecuteNonQuery();
                Page_Load(sender, e);


    }

    
}