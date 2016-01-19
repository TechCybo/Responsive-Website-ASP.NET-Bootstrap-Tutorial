using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class RecoverPassword : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    String GUIDvalue;
    int Uid;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            GUIDvalue = Request.QueryString["Uid"];
            if (GUIDvalue != null)
            {
                SqlCommand cmd = new SqlCommand("select * from ForgotPassRequests where id='" + GUIDvalue + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);                
                sda.Fill(dt);
                Uid = Convert.ToInt32(dt.Rows[0][1]);
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
        if (!IsPostBack)
        {
            if (dt.Rows.Count != 0)
            {
                tbNewPass.Visible = true;
                tbConfirmPass.Visible = true;
                lblPassword.Visible = true;
                lblRetypePass.Visible = true;
                btRecPass.Visible = true;
                
            }
            else
            {
                lblMsg.Text = "Your reset link is expired or Invalid !";
                lblMsg.ForeColor = Color.Red;
            }
        }
        
    }

    protected void btRecPass_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("update Users set Password='" + tbNewPass.Text + "' where Uid='" + Uid + "'",con);
            con.Open();
            cmd.ExecuteNonQuery();
        }
    }
}