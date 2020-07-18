using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdminHome : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Label1.Text = Session["user"].ToString();
        }
        else
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session.Abandon();
        Response.Redirect("adminlogin.aspx"); 
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        LinkButton chk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)chk.Parent.Parent;
        con = new SqlConnection(Database.ConnectionString);
        con.Open();
        cmd = new SqlCommand("update SRegis set Status='Active' where Sno=@id", con);
        cmd.Parameters.Add("@id", SqlDbType.VarChar, 50).Value = GridView1.DataKeys[gr.RowIndex].Value.ToString();
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Redirect("AdminHome.aspx");
        }


    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
}