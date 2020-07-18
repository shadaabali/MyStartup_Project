using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class CustomerRegis : System.Web.UI.Page
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
        cmd = new SqlCommand("insert into CRegis values(@u,@p,@n,@g,@m,@e,@c,@pin,@img,@q,@ans,@st)", con);
        cmd.Parameters.Add("@u", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        cmd.Parameters.Add("@p", SqlDbType.VarChar, 50).Value = TextBox2.Text;
        cmd.Parameters.Add("@n", SqlDbType.VarChar, 50).Value = TextBox4.Text;        
        cmd.Parameters.Add("@g", SqlDbType.VarChar, 10).Value = Label2.Text;        
        cmd.Parameters.Add("@m", SqlDbType.VarChar, 50).Value = TextBox5.Text;
        cmd.Parameters.Add("@e", SqlDbType.VarChar, 50).Value = TextBox6.Text;
        cmd.Parameters.Add("@c", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.Add("@pin", SqlDbType.VarChar, 50).Value = TextBox7.Text;
        FileUpload1.SaveAs(Server.MapPath("UserImage" + "/" + FileUpload1.FileName));
        cmd.Parameters.Add("@img", SqlDbType.VarChar, 50).Value = "UserImage" + "/" + FileUpload1.FileName;
        cmd.Parameters.Add("@q", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedItem.Text;
        cmd.Parameters.Add("@ans", SqlDbType.VarChar, 50).Value = TextBox8.Text;
        cmd.Parameters.Add("@st", SqlDbType.VarChar, 50).Value = "Active";
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label1.Text = "User Register Successfully !!!";
        }
        else
        {
            Label1.Text = "Some error";
        }
    }
}