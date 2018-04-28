using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ASPxButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default.aspx");

    }

    protected void ASPxDateEdit1_Init(object sender, EventArgs e)
    {
        ASPxDateEdit1.Date = DateTime.Now;
    }

    protected void ASPxCalendar1_Init(object sender, EventArgs e)
    {
        ASPxCalendar1.SelectedDate = DateTime.Now;
    }
}