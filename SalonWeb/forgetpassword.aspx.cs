using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class forgetpassword : System.Web.UI.Page
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
        cmd = new SqlCommand("select * from Regis where UserName='" + TextBox1.Text + "' and  Question='"+DropDownList1.SelectedItem.Text+"' and Answer='" + TextBox2.Text + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            //Label1.Text = "Ur Password is :-" + dr[1].ToString();
            Session.Add("usr", TextBox1.Text);
            Response.Redirect("Changepassword.aspx");
        }
        else
        {
            Label1.Text = "Username,question or answer incorrect !!!!";
        }
    }
}