using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class printbill : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    ReportDocument rprt = new ReportDocument();

    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        cn.Open();
        DataSet1 ds = new DataSet1();
        SqlDataAdapter ad = new SqlDataAdapter("select * from View1", cn);
        ad.Fill(ds, "View1");
        CrystalReportSource1.ReportDocument.SetDataSource(ds);
        CrystalReportViewer1.DataBind();
        cn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*cn.Open();
        DataSet1 ds = new DataSet1();
        cmd = new SqlCommand("select * from View1 where uid=@c", cn);
        cmd.Parameters.AddWithValue("@c", System.Convert.ToInt32(TextBox1.Text));
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        ad.Fill(ds, "View1");
        CrystalReportSource1.ReportDocument.SetDataSource(ds);
        CrystalReportViewer1.DataBind();
        cn.Close();*/
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        DataSet1 ds = new DataSet1();
        // DataSet1 ds = new DataSet1();
        int i = Convert.ToInt32(Request.QueryString["uid"]);
        string d = (Request.QueryString["date"]);
        cn.Open();
        cmd = new SqlCommand("select * from view1 where uid= @id and Date=@dt  ", cn);
        cmd.Parameters.AddWithValue("@id", i);
        cmd.Parameters.AddWithValue("@dt", d);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        cmd.ExecuteNonQuery();
        da.Fill(ds);
        da.Fill(ds, "view1");
        CrystalReportSource1.ReportDocument.SetDataSource(ds);
        CrystalReportViewer1.DataBind();
        cn.Close();
    }
}