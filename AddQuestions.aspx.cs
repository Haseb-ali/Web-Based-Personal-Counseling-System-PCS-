using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddQuestions : System.Web.UI.Page
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
        System.Random random = new System.Random();
        String _quiz_ID = (random.Next(10, 90) * random.Next(8992, 10223)).ToString();
        QuizId.Text = "QZ" + _quiz_ID;
    }

    protected void addQuestion_Click(object sender, EventArgs e)
    {
        string id = QuizId.Text;
        string _question = question.Text;
        string op1 = OPTION1.Text;
        string op2 = OPTION2.Text;
        string op3 = OPTION3.Text;
        string op4 = OPTION4.Text;
        string _answer = ANSWER.Text;
        int qmarks=1;


        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        sqcm.CommandText = "insert into generalQuestions values('" +id+ "','" + _question + "','" + op1 + "','" + op2 + "','" + op3 + "','" + op4 + "','" + _answer + "','"+qmarks+"')";
        sqcm.ExecuteNonQuery();
        Message.Text = "Question Add successfully .....";
        
        question.Text = "";
        OPTION1.Text = "";
        OPTION2.Text = "";
        OPTION3.Text = "";
        OPTION4.Text = "";
        ANSWER.Text = "";

    }
}