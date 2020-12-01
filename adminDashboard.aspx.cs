using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"]==null && Session["type"]==null)
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
}