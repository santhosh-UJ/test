using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    Bussinesslogic bl = new Bussinesslogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Session["UserID"] = TextBox1.Text.ToString();
            Session["Login"] = false;
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("~/UserRegistration.aspx");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        String username = TextBox1.Text.ToString();  
    String password = TextBox2.Text;  
    string con = ConfigurationManager.ConnectionStrings["Course"].ToString();  
    SqlConnection connection = new SqlConnection(con);  
    connection.Open();  
    string passwords = bl.encryption(password);
    String query = "SELECT UserID, Password FROM LoginDB WHERE (UserID = '" + username + "') AND (Password = '" + passwords + "');";  
  
        SqlCommand cmd = new SqlCommand(query, connection);  
        SqlDataReader sqldr = cmd.ExecuteReader();  
        if (sqldr.Read())  
        {
            Session["Login"] = true;
           
                Response.Redirect("~/Form3.aspx");
                
        }  
            else  
            {
                Label3.Text = "User or password is in correct not found";   
                 
            }  
          
    connection.Close();
    }
}