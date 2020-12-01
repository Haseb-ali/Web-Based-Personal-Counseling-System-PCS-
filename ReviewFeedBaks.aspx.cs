using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReviewFeedBaks : System.Web.UI.Page
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
        else if (Session["username"] != null && Session["type"].ToString() == "councellor")
        {
            Response.Redirect("counsellorDashboard.aspx");
        }
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();

        SqlDataAdapter adp = new SqlDataAdapter("select* from feed_back", con);
        DataTable db = new DataTable();
        adp.Fill(db);
        if (db.Rows.Count>0)
        {

            message.Text = "";
            viewUserInfo.DataSource = db;
            viewUserInfo.DataBind();
            
        }
        else
        {
            viewUserInfo.DataSource = null;
            viewUserInfo.DataBind();
            message.Text = "<h1 style='color:red'>NO FEEDBACK YET PRESENT</h1>";

        }


    }

    protected void delete_Click(object sender, EventArgs e)
    {

        String feedbackid = ((sender as LinkButton).CommandArgument).ToString();
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand cn = new SqlCommand();
        cn.Connection = con;
        cn.CommandText = "DELETE FROM feed_back WHERE FeedbackId='" + feedbackid + "'";

        cn.ExecuteNonQuery();
        
        con.Close();
        Page_Load(sender, e);
        
    }

    protected void filter_Click(object sender, EventArgs e)
    {
        string _filter = filters.Text;
        if (_filter=="p")
        {
            SqlConnection con;
            con = new SqlConnection(constring);
            con.Open();

            SqlDataAdapter adp = new SqlDataAdapter("select* from feed_back where Type='positive'", con);
            DataTable db = new DataTable();
            adp.Fill(db);
            if (db.Rows.Count > 0)
            {
                viewUserInfo.DataSource = db;
                viewUserInfo.DataBind();

            }
            else

            {

                viewUserInfo.DataSource = null;
                viewUserInfo.DataBind();

                message.Text = "<h1 style='color:red'>NO FEEDBACK YET PRESENT</h1>";

            }

        }
       else if (_filter == "n")
        {
            SqlConnection con;
            con = new SqlConnection(constring);
            con.Open();

            SqlDataAdapter adp = new SqlDataAdapter("select* from feed_back where Type='negative'", con);
            DataTable db = new DataTable();
            adp.Fill(db);
            if (db.Rows.Count > 0)
            {
                message.Text = "";
                viewUserInfo.DataSource = db;
                viewUserInfo.DataBind();

            }
            else
            {
                viewUserInfo.DataSource = null;
                viewUserInfo.DataBind();
                message.Text = "<h1 style='color:red'>NO FEEDBACK YET PRESENT</h1>";

            }

        }

    }
}