using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Quiz : System.Web.UI.Page
{
    string constring = "Data Source=DESKTOP-NGVV66H;Initial Catalog=PSC;Integrated Security=True";

  public static  List<string> quizIds=new List<string>();
    public static List<int> quiznumber = new List<int>();
    public static Dictionary<string, string> quizResponse = new Dictionary<string, string>();
    public static List<string> ids = new List<string>();
    public static List<string> ids1 = new List<string>();
    public static Dictionary<string,string> answer = new  Dictionary<string, string>();
    public static int marks;
    public static int lastOption, lastId;
    public static int quizlenght;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["UserID"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        

        else if (Session["username"] != null && Session["type"].ToString() == "admin")
        {
            Response.Redirect("adminDashboard.aspx");
        }

        else if (Session["username"] != null && Session["type"].ToString() == "councellor")
        {
            Response.Redirect("counsellorDashboard.aspx");
        }

    }

    protected void next_Click(object sender, EventArgs e)
    {
        quizlenght += 1;
        string quizans ="";
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        if (quizIds.Count >0) { 
        sqcm.CommandText = "select * from generalQuestions where QuizId='"+quizIds[0]+"'";
            SqlDataReader adp = sqcm.ExecuteReader();
            int i = 1;
            string op1 = option1.Checked.ToString();
            string op2 = option2.Checked.ToString();
            string op3 = option3.Checked.ToString();
            string op4 = option4.Checked.ToString();

            if (option1.Checked)
            {
                quizans = option1.Text;
                option1.Checked = false;

            }
            else if (option2.Checked)
            {

                quizans = option2.Text;
                option2.Checked = false;

            }
            else if (option3.Checked)
            {

                quizans = option3.Text;
                option3.Checked = false;

            }
            else if (option4.Checked)
            {

                quizans = option4.Text;
                option4.Checked = false;

            }


            while (adp.Read())
            {
                QuizInfo.Text = quiznumber[0].ToString();
                questionSpace.Text = adp[1].ToString();
                option1.Text = adp[2].ToString();
                option2.Text = adp[3].ToString();
                option3.Text = adp[4].ToString();
                option4.Text = adp[5].ToString();
                quiznumber.Remove(quiznumber[0]);
            }
            quizResponse.Add(ids1[0].ToString(), quizans.ToString());
            
            string id = ids1[0];
            ids1.Remove(id);
            quizIds.Remove(quizIds[0]);
            
            adp.Close();
            con.Close();

        }
        else
        {
            string op1 = option1.Checked.ToString();
            string op2 = option2.Checked.ToString();
            string op3 = option3.Checked.ToString();
            string op4 = option4.Checked.ToString();

            if (option1.Checked)
            {
                quizans = option1.Text;
                option1.Checked = false;

            }
            else if (option2.Checked)
            {

                quizans = option2.Text;
                option2.Checked = false;

            }
            else if (option3.Checked)
            {

                quizans = option3.Text;
                option3.Checked = false;

            }
            else if (option4.Checked)
            {

                quizans = option4.Text;
                option4.Checked = false;

            }

            quizResponse.Add(ids1[0].ToString(), quizans.ToString());
            SqlConnection con1;
            con1 = new SqlConnection(constring);
            con1.Open();
            SqlCommand sqcm1 = new SqlCommand();
            sqcm1.Connection = con1;

            for (int i = 0; i < ids.Count; i++)
            {
                sqcm1.CommandText = "select answer from generalQuestions where QuizId='" + ids[i] + "'";
                using (SqlDataReader data = sqcm1.ExecuteReader())
                {
                    while (data.Read())
                    {
                        answer.Add(ids[i].ToString(), data[0].ToString());
                    }
                }

            }
            foreach (var item in quizResponse)
            {
                foreach (var item1 in answer)
                {
                    if (item.Value == item1.Value)
                    {

                        
                        marks += 1;
                    }


                }
                

            }
            
            string time = DateTime.Now.ToString("h:mm:ss tt");
            System.Random random = new System.Random();
            String quizIdss = "QZ"+random.Next(999, 9999).ToString();
            HttpCookie Userid;
            string userId = Request.Cookies["UserID"].Value;

            string date = DateTime.UtcNow.ToString("MM-dd-yyyy");
            sqcm1.CommandText = "insert into results(quizId,studentId,TakenTime,score,totallMarks,takenDate) values('" + quizIdss + "','"+ userId + "','"+time.ToString()+"','"+marks.ToString()+"','"+quizlenght+"','"+ date.ToString()+"')";
            sqcm1.ExecuteNonQuery();
            HttpCookie UserCookie = new HttpCookie("marks");
            UserCookie.Value = marks.ToString();
            UserCookie.Expires = DateTime.Now.AddHours(1);
            Response.Cookies.Add(UserCookie);
            quizResponse.Clear();
            answer.Clear();
            marks = 0; 
           Response.Redirect("finishQuizs.aspx");
        }
        
        


    }

    protected void startQuiz_Click(object sender, EventArgs e)
    {
        quizlenght = 0;
        startQuiz.Enabled = false;
        next.Enabled = true;
        quizResponse.Clear();
        quiznumber.Clear();
        ids.Clear();
        quizIds.Clear();
        SqlConnection con;
        con = new SqlConnection(constring);
        con.Open();
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = con;
        sqcm.CommandText = "select QuizId from generalQuestions";
        SqlDataReader adp = sqcm.ExecuteReader();
        while (adp.Read())
        {
            for (int i = 0; i <adp.FieldCount; i++)
            {
                quizIds.Add(adp[i].ToString());
                ids.Add(adp[i].ToString());
                ids1.Add(adp[i].ToString());
        
            }

        }
        
        for(int j = 1; j <= quizIds.Count; j++)
        {
            quiznumber.Add(j);
        }
        
        adp.Close();
        sqcm.CommandText = "select * from generalQuestions where QuizId='" + quizIds[0] + "'";
        SqlDataReader adp1 = sqcm.ExecuteReader();
        string id = quizIds[0];
        quizIds.Remove(id);

        while (adp1.Read())
        {
            QuizInfo.Text = quiznumber[0].ToString();
            toatllQuizn.Text =(quizIds.Count+1).ToString();
            questionSpace.Text = adp1[1].ToString();
            option1.Text = adp1[2].ToString();
            option2.Text = adp1[3].ToString();
            option3.Text = adp1[4].ToString();
            option4.Text = adp1[5].ToString();
            quiznumber.Remove(quiznumber[0]);

        }



    }
 
}