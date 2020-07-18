using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UserHome : System.Web.UI.Page
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
            Response.Redirect("Login.aspx");
        }
        MultiView1.SetActiveView(View1);
        con = new SqlConnection(Database.ConnectionString);
        con.Open();
        cmd = new SqlCommand("select * from CRegis where UserName='" + Label1.Text + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = dr[2].ToString();
            Label4.Text = dr[4].ToString();
        }
        if (CheckBox1.Checked == true)
        {
            Label5.Text = Label5.Text + " " + CheckBox1.Text;
        }
        if (CheckBox2.Checked == true)
        {
            Label5.Text = Label5.Text + " " + CheckBox2.Text;
        }
        if (CheckBox3.Checked == true)
        {
            Label5.Text = Label5.Text + " " + CheckBox3.Text;
        }
        if (CheckBox4.Checked == true)
        {
            Label5.Text = Label5.Text + " " + CheckBox4.Text;
        }
        Label6.Text = "BID00" + System.DateTime.Now.Minute + "00" + System.DateTime.Now.Millisecond;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["usr"] = null;
        Session.Abandon();
        Response.Redirect("Login.aspx");      
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(Database.ConnectionString);
        con.Open();
        cmd = new SqlCommand("insert into Booking values(@cn,@cm,@s,@d,@db,@t,@c,@sn,@bid,@st,@u)", con);
        cmd.Parameters.Add("@cn", SqlDbType.VarChar, 50).Value = Label2.Text;
        cmd.Parameters.Add("@cm", SqlDbType.VarChar, 50).Value = Label4.Text;
        cmd.Parameters.Add("@s", SqlDbType.VarChar, 50).Value = Label5.Text;
        cmd.Parameters.Add("@d", SqlDbType.VarChar, 10).Value = TextBox1.Text;
        cmd.Parameters.Add("@db", SqlDbType.VarChar, 50).Value = System.DateTime.Now.ToString();
        cmd.Parameters.Add("@t", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.Add("@c", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedItem.Text;
        cmd.Parameters.Add("@sn", SqlDbType.VarChar, 50).Value = DropDownList3.SelectedItem.Text;
        cmd.Parameters.Add("@bid", SqlDbType.VarChar, 50).Value = Label6.Text;
        cmd.Parameters.Add("@st", SqlDbType.VarChar, 50).Value = "Pending";
        cmd.Parameters.Add("@u", SqlDbType.VarChar, 50).Value = Label1.Text;
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label3.Text = "Booking Done Successfully and Booking ID is:-"+Label6.Text;
        }
        else
        {
            Label3.Text = "Some error";
        }
    }
}