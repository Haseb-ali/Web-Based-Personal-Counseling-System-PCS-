using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class changePassword : System.Web.UI.Page
{
    string constring = "Data Source=DESKTOP-NGVV66H;Initial Catalog=PSC;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null && Session["type"] == null)
        {
            Response.Redirect("Default.aspx");
        }
       

    }

    protected void savepassword_Click(object sender, EventArgs e)
    {
        int bit=0;
        string username = Request.Cookies["UserID"].Value.ToString();
        string oldpass = olpassword.Text;
        string newpass = newpassword.Text;
             SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        sqcm.CommandText = "select*from allusers where userId='" + username + "' and password='" + oldpass + "'";
        using (SqlDataReader adp = sqcm.ExecuteReader())
        {
            if (adp.HasRows)
            {
                bit = 1;


            }
            else
            {
                
                message.Text = "Old pssword is wrong";
            }
        }
        if (bit==1)
        {
            sqcm.CommandText = "update allusers set password='" + newpassword.Text + "' where password='" + oldpass + "' and userId='" + username + "' ";
            sqcm.ExecuteNonQuery();
            message.Text = "Password Change successfully";

        }








    }

    protected void home_Click(object sender, EventArgs e)
    {

    }
}