using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(Database.ConnectionString);
        con.Open();
        cmd = new SqlCommand("select * from CRegis where UserName='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {        
                //Label1.Text = "Login successfully !!!";
                Session.Add("usr", TextBox1.Text);
                Response.Redirect("UserHome.aspx");            
        }
        else
        {
            Label1.Text = "Username or password incorrect !!!!";
        }
  
    }
}