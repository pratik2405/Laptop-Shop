using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;



public partial class loginaspx : System.Web.UI.Page
{
    SqlConnection cn;

    protected void Page_Load(object sender, EventArgs e)
    {
         string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter sda = new SqlDataAdapter("Select * from Registration where email='"+TextBox1.Text +"' and password='"+ TextBox7.Text +"'",cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        SqlCommand cmd = new SqlCommand("select uid,fname,Password from Registration where fname=@U and password=@P", cn);

        cmd.Parameters.AddWithValue("@U", TextBox1.Text);
        cmd.Parameters.AddWithValue("@P", TextBox7.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable ds = new DataTable();
        cmd.ExecuteNonQuery();
        sda.Fill(ds);
        cn.Close();


        if (dt.Rows.Count == 1 && dt.Rows.Count > 0)
        {
            int id = Convert.ToInt32(dt.Rows[0][0].ToString());
            String custname = dt.Rows[0][1].ToString();
            Response.Write("<script>alert('Congrats your login is successfuly')</script>");
            Response.Redirect("product.aspx?fname=" + custname + "&uid=" + id);
            Session["username"] = TextBox1.Text;
            Session["buyitems"] = null;
            Label1.Visible = true;
            Label1.Text="Log In SuccessFully";
            Label1.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            Response.Write("<script>alert('Your username and Password is incorrect')</script>");
            TextBox1.Text = "";
            TextBox7.Text = "";
            Label1.Visible = true;
            Label1.Text="Invalid Information";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
    }

    
