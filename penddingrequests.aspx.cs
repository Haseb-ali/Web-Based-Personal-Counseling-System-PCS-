using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    string constring = "Data Source=DESKTOP-NGVV66H;Initial Catalog=PSC;Integrated Security=True";
    StringBuilder table = new StringBuilder();
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

        SqlDataAdapter adp = new SqlDataAdapter("select*from students where status='pendding'", con);
                DataTable db = new DataTable();
                adp.Fill(db);
        if (db.Rows.Count<1)
        {
            chasnge.Text = "No request is Pendding.........";
        }
        else
        {
            
        }
       
        
                penddingrequests.DataSource = db;
                penddingrequests.DataBind();    
        
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
        
    }


    protected void delete_Click(object sender, EventArgs e)
    {
        String studentId = ((sender as LinkButton).CommandArgument).ToString();
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand cn = new SqlCommand();
        cn.Connection = con;
        cn.CommandText = "DELETE FROM students WHERE studentId='" +studentId+"'";

         cn.ExecuteNonQuery();
        cn.CommandText = "DELETE FROM allusers WHERE userId='" + studentId + "'";
        cn.ExecuteNonQuery();
        con.Close();
        Page_Load(sender,e);

    }

    protected void accept_Click(object sender, EventArgs e)
    {
        String studentId = ((sender as LinkButton).CommandArgument).ToString();

        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand cn = new SqlCommand();
        cn.Connection = con;
        cn.CommandText = "update  students set status='accepted' where studentId='"+studentId+"'";
        cn.ExecuteNonQuery();
        cn.CommandText = "update allusers set userType='student' where userType='pendding' and userid='" + studentId+"'";
        cn.ExecuteNonQueryAsync();
        con.Close();
        Page_Load(sender, e);

    }
}