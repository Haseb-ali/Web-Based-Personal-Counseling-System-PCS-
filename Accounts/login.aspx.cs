using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;
using System.IO;

public partial class Accounts_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cleanError()
    {
        loginerror.Text = "";

    }
    protected void processLogin (object sender, EventArgs e)
    {
       
        string uname=username.Text;
        string pass = password.Text;
        string constring = "Data Source=DESKTOP-NGVV66H;Initial Catalog=PSC;Integrated Security=True";
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        sqcm.CommandText = "select*from allusers where userId='"+uname+"' and password='"+pass+"'";
        SqlDataReader adp = sqcm.ExecuteReader();


        string userType="";
        if (adp.HasRows)
        {
            
            while (adp.Read())
            {
               userType = adp[2].ToString();
               
                
            }
            if (userType == "admin") {
                Session["username"] = uname.ToString();
                Session["type"] = "admin";
                HttpCookie UserId = new HttpCookie("UserID");
                UserId.Value = uname;
                UserId.Expires = DateTime.Now.AddHours(1);
                Response.Cookies.Add(UserId);
                Response.Redirect("../adminDashboard.aspx");
               }
            else if(userType=="student")  {
                Session["username"] = uname.ToString();
                Session["type"] = "student";
                HttpCookie UserId = new HttpCookie("UserID");
                UserId.Value = uname;
                UserId.Expires = DateTime.Now.AddHours(1);
                Response.Cookies.Add(UserId);

                Response.Redirect("../studentDashboard.aspx");

            }
            else if (userType== "councellor")
            {
                Session["username"] = uname.ToString();
                Session["type"] = "councellor";
                HttpCookie UserId = new HttpCookie("UserID");
                UserId.Value = uname;
                UserId.Expires = DateTime.Now.AddHours(1);
                Response.Cookies.Add(UserId);
            
                Response.Redirect("../counsellorDashboard.aspx");
            }
            else
            {
                loginerror.Text = "Your registration request in pedding..";
            }
        }
        else
        {
            loginerror.Text= "<span style='color: green;background-color: aliceblue; padding: 7px;width: 80 %;'>wrong username or passwrord</span>";
        }

        con.Close();
           


    }

}