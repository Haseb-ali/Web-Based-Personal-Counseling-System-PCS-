using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageRecords : System.Web.UI.Page
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
        SqlDataAdapter adp = new SqlDataAdapter("select*from students where studentId='" + _sarchKeyword + "' or fullname='" + _sarchKeyword + "'", con);
        DataTable db = new DataTable();
        adp.Fill(db);
        if (db.Rows.Count < 1)
        {
            SqlDataAdapter adp1 = new SqlDataAdapter("select*from Councellors where conId='" + _sarchKeyword + "' or conName='" + _sarchKeyword + "'", con);
            DataTable db1 = new DataTable();
            adp1.Fill(db1);
            if (db1.Rows.Count < 1)
            {
                change.Text = "Invalid userId or data not exit acccording to this userId";
                viewUserInfo.DataSource = null;
                viewUserInfocon.DataSource = null;
                viewUserInfocon.DataBind();
                viewUserInfo.DataBind();
            }
            else
            {
                change.Text = "Councellor information according to KEYWORD: " + "<mark>" + _sarchKeyword + "</mark>";

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

    protected void update_Click(object sender, EventArgs e)
    {
       


        String studentId = ((sender as LinkButton).CommandArgument).ToString();
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        sqcm.CommandText = "select*from students where studentId='"+studentId+"'";
        SqlDataReader adp = sqcm.ExecuteReader();
        if (adp.HasRows)
        {
            while (adp.Read())
            {
                username.Text = adp[0].ToString();
                fullname.Text = adp[1].ToString();
                education.Text = adp[2].ToString();
                address.Text = adp[3].ToString();
                contactno.Text = adp[4].ToString();
                email.Text = adp[5].ToString();

            }

        }


    }

    protected void delete_Click(object sender, EventArgs e)
    {
        String studentId = ((sender as LinkButton).CommandArgument).ToString();
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand cn = new SqlCommand();
        cn.Connection = con;
        cn.CommandText = "DELETE FROM students WHERE studentId='" + studentId + "'";

        cn.ExecuteNonQuery();
        cn.CommandText = "DELETE FROM allusers WHERE userId='" + studentId + "'";
        cn.ExecuteNonQuery();
        con.Close();
        search_Click(sender, e);
    }



    protected void updateCon_Click(object sender, EventArgs e)
    {
        String conId = ((sender as LinkButton).CommandArgument).ToString();
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        sqcm.CommandText = "select*from Councellors where conId='" + conId + "'";
        SqlDataReader adp = sqcm.ExecuteReader();
        if (adp.HasRows)
        {
            while (adp.Read())
            {
                username.Text = adp[0].ToString();
                fullname.Text = adp[1].ToString();
                education.Text = adp[2].ToString();
                address.Text = adp[3].ToString();
                contactno.Text = adp[4].ToString();
                email.Text = adp[5].ToString();

            }

        }

    }

    protected void deleteCon_Click(object sender, EventArgs e)
    {
        String conId = ((sender as LinkButton).CommandArgument).ToString();
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand cn = new SqlCommand();
        cn.Connection = con;
        cn.CommandText = "DELETE FROM Councellors WHERE conId='" + conId + "'";

        cn.ExecuteNonQuery();
        cn.CommandText = "DELETE FROM allusers WHERE userId='" + conId + "'";
        cn.ExecuteNonQuery();
        con.Close();
        search_Click(sender, e);
    }

    protected void view_Click(object sender, EventArgs e)
    {
        String studentId = ((sender as LinkButton).CommandArgument).ToString();
        HttpCookie UserCookie = new HttpCookie("User");
        UserCookie.Value = studentId;
        UserCookie.Expires = DateTime.Now.AddHours(1);
        Response.Cookies.Add(UserCookie);
        Response.Redirect("profile.aspx");
    }

    protected void viwCon_Click(object sender, EventArgs e)
    {
        String studentId = ((sender as LinkButton).CommandArgument).ToString();
        HttpCookie UserCookie = new HttpCookie("User");
        UserCookie.Value = studentId;
        UserCookie.Expires = DateTime.Now.AddHours(1);
        Response.Cookies.Add(UserCookie);
        Response.Redirect("profile.aspx");
    }


    protected void savechanges_Click(object sender, EventArgs e)
    {
        string uname = username.Text;
        string _fullnmae = fullname.Text;
        string _address = address.Text;
        string _education = education.Text;
        string _contactno = contactno.Text;
        string _email = email.Text;
        if (uname==""||_fullnmae==""||_address==""||_education==""|| _contactno==""|| _email=="") {
            change.Text = "CON NOT SUBMIT EMPTY FORM";
            return;
        }


        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        if (uname.ToLower().Contains("std")) {


            sqcm.CommandText = "update students set fullname='" + _fullnmae + "' , education='" + _education + "',address='" + _address + "',contactno='" + _contactno + "' ,email='" + _email + "' where studentId='" + uname + "'";
            SqlDataReader adp = sqcm.ExecuteReader();
        }
        else if (uname.ToLower().Contains("crs"))
        {
            sqcm.CommandText = "update Councellors set conName='" + _fullnmae + "' , conEducation='" + _education + "',Conaddress='" + _address + "',conContactNo='" + _contactno + "' ,conEmail='" + _email + "' where conId='" + uname + "'";
            SqlDataReader adp = sqcm.ExecuteReader();


        }

        change.Text = "Information updated according to KEYWORD: " + "<mark>" + uname + "</mark>";
        username.Text = "";
        fullname.Text = "";
        education.Text = "";
        address.Text = "";
        contactno.Text = "";
        email.Text = "";

    }
}