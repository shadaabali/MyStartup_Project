using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Changepassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usr"] != null)
        {
            Label1.Text = Session["usr"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(Database.ConnectionString);
        con.Open();
        cmd = new SqlCommand("update Regis set Password='" + TextBox1.Text + "' where UserName='"+Label1.Text+"'", con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label2.Text = "Change password successfully !!!";
        }

    }
}