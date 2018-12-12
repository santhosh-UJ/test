using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class UserRegistration : System.Web.UI.Page
{
    Bussinesslogic bl = new Bussinesslogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
            ddldistrict.DataSource = bl.getdropdown("spdistrict", null);
            ddldistrict.DataBind();
            ListItem dist = new ListItem("Select District", "-1");
            ddldistrict.Items.Insert(0, dist);
            ListItem taluk = new ListItem("Select Taluk", "-1");
            ddltaluk.Items.Insert(0, taluk);
        }
    }

    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlParameter paramater = new SqlParameter("@distid", ddldistrict.SelectedValue);
        ddltaluk.DataSource = bl.getdropdown("sptaluk", paramater);
        ddltaluk.DataBind();
        ListItem taluk = new ListItem("Select Taluk", "-1");
        ddltaluk.Items.Insert(0, taluk);
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible == false)
        {
            Calendar1.Visible = true;
        }
        else
        {
            Calendar1.Visible = false;
        }

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdob.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (rbgender.SelectedValue == "M" || rbgender.SelectedValue == "F")
        {
            if (ddldistrict.SelectedIndex != 0 && ddltaluk.SelectedIndex != 0)
            {
                string Name = txtname.Text.ToString();
                DateTime dob = Convert.ToDateTime(txtdob.Text);
                char gender = Convert.ToChar(rbgender.SelectedValue);
                string mobilenum = txtmoblie.Text.ToString();
                string address = txtaddress.Text.ToString();
                string email = Txtemail.Text.ToString();
                int distcode = Convert.ToInt16(ddldistrict.SelectedValue);
                int talukcode = Convert.ToInt16(ddltaluk.SelectedValue);
                Int64 regnum  = bl.inserttable(Name, dob, gender, mobilenum, address, email, distcode, talukcode);
                lblmsg.Text = "Updated!!";
                String CS1 = ConfigurationManager.ConnectionStrings["Course"].ConnectionString;

                using (SqlConnection con1 = new SqlConnection(CS1))
                {
                    string password = bl.encryption("Nic@123");
                    SqlCommand cmd = new SqlCommand("spinserlogin", con1);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@userid",regnum );
                    cmd.Parameters.AddWithValue("@password", password);
                    con1.Open();
                    cmd.ExecuteNonQuery();
                    
                    string message = "Your Registered User ID :" + regnum.ToString();
                    lblmsg.Text = message;
                    System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('" + message + "');", true);
                   
                    //string script = "alert("message")";
                    //ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
                }

            }
            else
            {
                lblmsg.Text = "Please select Disrtict and Taluk in drop down!";
                //district and taluk error 
            }
        }
        else
        {
            lblmsg.Text = "Please select Gender!";
            //gendererror
        }


    }
}