using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class inductCounsellor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        if (Session["username"] == null && Session["type"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        if (Session["username"] != null && Session["type"].ToString() == "student")
        {
            Response.Redirect("studentDashboard.aspx");
        }
        else if (Session["username"] != null && Session["type"].ToString() == "councellor")
        {
            Response.Redirect("counsellorDashboard.aspx");
        }
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        System.Random random = new System.Random();
        String counsellorId = (random.Next(10, 90) * random.Next(8992, 10223)).ToString();
        username.Text = "crs" + counsellorId;

    }



    protected void inductcounsellor_Click(object sender, EventArgs e)
    {
        string _username = username.Text;
        string _fullName = fullname.Text;
        string _education = Education.Text;
        string _address = Address.Text;
        string _contactNo = ContactNo.Text;
        string _email = Email.Text;
        string _password = Paasword.Text;
        string constring = "Data Source=DESKTOP-NGVV66H;Initial Catalog=PSC;Integrated Security=True";
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        try
        {
            sqcm.CommandText = "insert into allusers values('" + _username + "','" + _password + "','councellor')";
            sqcm.ExecuteNonQuery();

            sqcm.CommandText = "insert into Councellors  values('" + _username + "','" + _fullName + "','" + _education + "','" + _address + "','" + _contactNo + "','" + _email + "')";
            sqcm.ExecuteNonQuery();

        }
        catch (SqlException ex)
        {
            debug.Text = "SQL insertation Error:Please check register.aspx.cs file..!";
        }
        con.Close();


        fullname.Text = "";
        Education.Text = "";
        Address.Text = "";
        ContactNo.Text = "";
        Email.Text = "";
        messages.Text = "RECORD SAVED SUCCESSFULLY";
    }


}
