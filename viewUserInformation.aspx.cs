using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewUserInformation : System.Web.UI.Page
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

    }

    protected void search_Click(object sender, EventArgs e)
    {

        string _sarchKeyword = searchKeyword.Text;

        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select*from students where studentId='" + _sarchKeyword + "' or fullname='"+_sarchKeyword+"'", con);
        DataTable db = new DataTable();
        adp.Fill(db);
        if (db.Rows.Count < 1)
        {
            SqlDataAdapter adp1 = new SqlDataAdapter("select*from Councellors where conId='" + _sarchKeyword + "' or conName='"+_sarchKeyword+"'", con);
            DataTable db1 = new DataTable();
            adp1.Fill(db1);
            if (db1.Rows.Count<1)
            {
                
                change.Text = "Invalid userId or data not exit acccording to this userId";
            }
            else
            {
                change.Text = "Councellor information according to KEYWORD: " +"<mark>"+ _sarchKeyword+"</mark>";

                viewUserInfo.DataSource = null;
                viewUserInfo.DataBind();
                viewUserInfocon.DataSource = db1;
                viewUserInfocon.DataBind();
            }



           
        }
        else
        {

            change.Text = "Student information according to KEYWORD: " + "<mark>" + _sarchKeyword + "</mark>";

            viewUserInfocon.DataSource = null;
            viewUserInfocon.DataBind();
            viewUserInfo.DataSource = db;
            viewUserInfo.DataBind();


        }

        
       
    }
}