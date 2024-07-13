using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class adminlogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\HP laptop\App_Data\hpdata.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        String st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "prince007@gmail.com" && TextBox7.Text == "11111")
        {
            Response.Write("<script>alert('Your Login is successful')</script>");
            Response.Redirect("addproduct.aspx");
        }
    }
}