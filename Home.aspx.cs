using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TIMER(object sender, EventArgs e)
    {
        Random r = new Random();
        int i = r.Next(1, 5);
        Image2.ImageUrl = "~/Image/" + i.ToString() + ".jpg";
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
