using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SalonLogin : System.Web.UI.Page
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
        cmd = new SqlCommand("select * from SRegis where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr[11].ToString() == "Active")
            {
                Session.Add("usr", TextBox1.Text);
                Response.Redirect("SalonHome.aspx");
            }
            else
            {
                Label1.Text = "You are not active Salon please contact administrator !!";
            }
        }
        else
        {
            Label1.Text = "Username or password incorrect !!!!";
        }
    }
}