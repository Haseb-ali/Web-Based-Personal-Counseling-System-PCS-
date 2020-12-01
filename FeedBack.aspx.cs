using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FeedBack : System.Web.UI.Page
{
    string constring = "Data Source=DESKTOP-NGVV66H;Initial Catalog=PSC;Integrated Security=True";
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
        else if (Session["username"] != null && Session["type"].ToString() == "admin")
        {
            Response.Redirect("adminDashboard.aspx");
        }
    }

    protected void SENDFEEDBACK_Click(object sender, EventArgs e)
    {
        StringBuilder mes1 = new StringBuilder();
        string username="";
        string fedtopic = topic.Text;
        string cat = catogory.Text;
        mes1.Append(message.Text);
        string userId = Request.Cookies["UserId"].Value.ToString();
        string date = DateTime.UtcNow.ToString("MM-dd-yyyy");
        System.Random random = new System.Random();
        String fedBackId = "fd" + random.Next(999, 9999).ToString();
            SqlConnection con;
            con = new SqlConnection(constring);
            con.Open();
            SqlCommand sqcm = new SqlCommand();
            sqcm.Connection = con;
        sqcm.CommandText = "select conName from Councellors where conId = '" + userId + "'";
        using(SqlDataReader adp = sqcm.ExecuteReader())
        {
            while (adp.Read())
            {
                username = adp[0].ToString();
            }


        }
        
        if (fedtopic!="" && cat!="" && mes1.ToString()!="")
        {
            sqcm.CommandText = "insert into feed_back values('" + fedBackId + "','" + fedtopic + "','"+mes1+"','"+userId+"','"+username+"','"+date+"','"+cat+"')";
            sqcm.ExecuteNonQuery();

            hint.Text = "FeedBack send successfully";
        }
        else
        {
            hint.Text = "You can not submit empty form";
        }
        topic.Text = "";
        message.Text = "";

    }
}