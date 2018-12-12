using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Form4 : System.Web.UI.Page
{
    Bussinesslogic bl = new Bussinesslogic();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListItem cource = new ListItem("Select cource", "-1");
            ddlcourse.Items.Insert(0, cource);
        }

    }
    protected void txtreg_TextChanged(object sender, EventArgs e)
    {
        string reg = txtreg.Text.ToString();
        SqlParameter parm = new SqlParameter("@reg", reg);

        DataSet ds = new DataSet();
        ds = bl.getdropdown("regcount", parm);
        string result = ds.Tables[0].Rows[0]["RESULT"].ToString();

       if (result == "1")
       {
           ddlcourse.DataSource = bl.getdropdown("spgetcources", null);
           ddlcourse.DataBind();
           ListItem cource = new ListItem("Select cource", "-1");
           ddlcourse.Items.Insert(0, cource);
       }
       else
       {
           txtreg.Text = string.Empty;
           Regmsg.Text = "Invalid registration ID!";
         
       }
        
    }
    protected void ddlcourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlcourse.SelectedIndex > 0)
        {
            SqlParameter parm1 = new SqlParameter("@courecode", ddlcourse.SelectedValue);
            DataSet ds1 = new DataSet();
            ds1 = bl.getdropdown("spgetcourcesduration", parm1);
            string result1 = ds1.Tables[0].Rows[0]["DURATION"].ToString();
           txtduration.Text = result1.ToString();


        }
        else
        {
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String CS1 = ConfigurationManager.ConnectionStrings["Course"].ConnectionString;
        using (SqlConnection CON = new SqlConnection(CS1))
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("spcoursecheck", CON);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@Reg", txtreg.Text);
            da.SelectCommand.Parameters.AddWithValue("@coursecode", ddlcourse.SelectedValue);
            CON.Open();
            da.Fill(ds);
            if (Convert.ToInt16(ds.Tables[0].Rows[0]["Result"]) == 0)
            {
                String CS = ConfigurationManager.ConnectionStrings["Course"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spcource", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@reg", txtreg.Text.ToString());
                    cmd.Parameters.AddWithValue("@coursecd", ddlcourse.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@regDT", DateTime.Now);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Regmsg.Text = "Succefully Updated!";
                }
            }
            else
            {
                Regmsg.Text = "Already Registered to this course";
                //already registered 
            }
        }
    }
}