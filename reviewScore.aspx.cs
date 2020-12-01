using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reviewScore : System.Web.UI.Page
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

    protected void search_Click(object sender, EventArgs e)
    {
        string filter = combox.Text;
        string _sarchKeyword = searchKeyword.Text;
        if (_sarchKeyword=="")
        {
            change.Text = "Invalid userId or data not exit acccording to this userId";
        }

        
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select*from results where studentId='" + _sarchKeyword + "'", con);
            DataTable db = new DataTable();
        adp.Fill(db);
       
        if (db.Rows.Count >0)
        {
            change.Text = "";
            viewUserInfo.DataSource = db;
            viewUserInfo.DataBind();
            
        }
        else
        {
            change.Text = "No data found according to this userId: "+"<mark>"+_sarchKeyword+"</mark>";

        }
        
        




    }
}