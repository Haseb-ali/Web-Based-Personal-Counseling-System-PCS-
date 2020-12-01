using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class scoreHistory : System.Web.UI.Page
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
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        string userId = Request.Cookies["UserID"].Value.ToString();
        SqlDataAdapter adp = new SqlDataAdapter("select*from results where studentId='"+userId+"'", con);
        DataTable db = new DataTable();
        adp.Fill(db);
        viewUserInfo.DataSource = db;
        viewUserInfo.DataBind();
        
    }
}