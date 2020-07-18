using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SalonHome : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usr"] != null)
        {
            Label1.Text = Session["usr"].ToString();
        }
        else
        {
            Response.Redirect("SalonLogin.aspx");
        }
        con = new SqlConnection(Database.ConnectionString);
        con.Open();
        cmd = new SqlCommand("select * from SRegis SRegis where Email='" + Label1.Text + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = dr[1].ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["usr"] = null;
        Session.Abandon();
        Response.Redirect("SalonLogin.aspx");      
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        LinkButton chk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)chk.Parent.Parent;
        con = new SqlConnection(Database.ConnectionString);
        con.Open();
        cmd = new SqlCommand("update Booking set Status='Approved' where Id=@id", con);
        cmd.Parameters.Add("@id", SqlDbType.VarChar, 50).Value = GridView1.DataKeys[gr.RowIndex].Value.ToString();
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Redirect("SalonHome.aspx");
        }
    }
}