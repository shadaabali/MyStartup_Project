using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SalonRegis : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            Label2.Text = RadioButton1.Text;
        }
        else if (RadioButton2.Checked == true)
        {
            Label2.Text = RadioButton2.Text;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(Database.ConnectionString);
        con.Open();
        cmd = new SqlCommand("insert into SRegis values(@n,@c,@a,@e,@p,@cp,@m,@t,@q,@ans,@st)", con);
        cmd.Parameters.Add("@n", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        cmd.Parameters.Add("@c", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.Add("@a", SqlDbType.VarChar, 50).Value = TextBox2.Text;
        cmd.Parameters.Add("@e", SqlDbType.VarChar, 10).Value = TextBox3.Text;
        cmd.Parameters.Add("@p", SqlDbType.VarChar, 50).Value = TextBox4.Text;
        cmd.Parameters.Add("@cp", SqlDbType.VarChar, 50).Value = TextBox5.Text;
        cmd.Parameters.Add("@m", SqlDbType.VarChar, 50).Value = TextBox6.Text;
        cmd.Parameters.Add("@t", SqlDbType.VarChar, 50).Value = Label2.Text;
        cmd.Parameters.Add("@q", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedItem.Text;
        cmd.Parameters.Add("@ans", SqlDbType.VarChar, 50).Value = TextBox8.Text;
        cmd.Parameters.Add("@st", SqlDbType.VarChar, 50).Value = "Deactive";
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label1.Text = "Salon Register Successfully !!!";
        }
        else
        {
            Label1.Text = "Some error";
        }
    }
}