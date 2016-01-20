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
    DataTable dt = new DataTable();
    int Uid;

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
                if (dt.Rows.Count != 0)
                {
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    lblMsg.Text = "Your Password Reset Link is Expired or Invalid !";
                    lblMsg.ForeColor = Color.Red;
                }

            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        if(!IsPostBack)
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
                lblMsg.Text = "Your Password Reset Link is Expired or Invalid !";
                lblMsg.ForeColor = Color.Red;
            }
        }

        }

    protected void btRecPass_Click(object sender, EventArgs e)
    {
        if (tbNewPass.Text != "" && tbConfirmPass.Text != "" && tbNewPass.Text == tbConfirmPass.Text)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("update users set Password='" + tbNewPass.Text + "' where Uid='" + Uid + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                SqlCommand cmd2 = new SqlCommand("delete from ForgotPassRequests where Uid='" + Uid + "'", con);
                cmd2.ExecuteNonQuery();
                Response.Redirect("~/SignIn.aspx");
            }
        }
    }
}