using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            
        }
        else
        {
            Response.Redirect("~/Signin.aspx");
        }
    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}
