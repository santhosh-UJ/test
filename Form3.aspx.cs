using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Form3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bool login = Convert.ToBoolean(Session["Login"]);
        if (!login)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Form4.aspx");
        Session["Login"] = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["Login"] = false;
        Response.Redirect("~/Login.aspx");
    }
    //protected void Button2_Click(object sender, EventArgs e)
    //{

    //    Response.Redirect("~/Form5.aspx");
    //}
}