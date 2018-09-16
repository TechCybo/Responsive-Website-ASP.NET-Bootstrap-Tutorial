using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using paytm;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            if (!IsPostBack)
            {
                BindPriceData();
            }
        }
        else
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }
    public void BindPriceData()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] CookieDataArray = CookieData.Split(',');
            if (CookieDataArray.Length > 0)
            {
                DataTable dtBrands = new DataTable();
                Int64 CartTotal = 0;
                Int64 Total = 0;
                for (int i = 0; i < CookieDataArray.Length; i++)
                {
                    string PID = CookieDataArray[i].ToString().Split('-')[0];
                    string SizeID = CookieDataArray[i].ToString().Split('-')[1];

                    if (hdPidSizeID.Value != null && hdPidSizeID.Value != "")
                    {
                        hdPidSizeID.Value += "," + PID + "-" + SizeID;
                    }
                    else
                    {
                        hdPidSizeID.Value = PID + "-" + SizeID;
                    }

                    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        using (SqlCommand cmd = new SqlCommand("select A.*,dbo.getSizeName(" + SizeID + ") as SizeNamee,"
                            + SizeID + " as SizeIDD,SizeData.Name,SizeData.Extention from tblProducts A cross apply( select top 1 B.Name,Extention from tblProductImages B where B.PID=A.PID ) SizeData where A.PID="
                            + PID + "", con))
                        {
                            cmd.CommandType = CommandType.Text;
                            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                            {
                                sda.Fill(dtBrands);
                            }

                        }
                    }
                    CartTotal += Convert.ToInt64(dtBrands.Rows[i]["PPrice"]);
                    Total += Convert.ToInt64(dtBrands.Rows[i]["PSelPrice"]);
                }
                divPriceDetails.Visible = true;

                spanCartTotal.InnerText = CartTotal.ToString();
                spanTotal.InnerText = "Rs. " + Total.ToString();
                spanDiscount.InnerText = "- " + (CartTotal - Total).ToString();

                hdCartAmount.Value = CartTotal.ToString();
                hdCartDiscount.Value = (CartTotal - Total).ToString();
                hdTotalPayed.Value = Total.ToString();
            }
            else
            {
                //TODO Show Empty Cart
                Response.Redirect("~/Products.aspx");
            }
        }
        else
        {
            //TODO Show Empty Cart
            Response.Redirect("~/Products.aspx");
        }
    }


    protected void btnPaytm_Click(object sender, EventArgs e)
    {
        if (Session["USERID"] != null)
        {
            string USERID = Session["USERID"].ToString();
            string PaymentType = "Paytm";
            string PaymentStatus = "NotPaid";
            string EMAILID = Session["USEREMAIL"].ToString();

            //Insert Data to tblPurchase
            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into tblPurchase values('" + USERID + "','"
                    + hdPidSizeID.Value + "','" + hdCartAmount.Value + "','" + hdCartDiscount.Value + "','"
                    + hdTotalPayed.Value + "','" + PaymentType + "','" + PaymentStatus + "',getdate(),'"
                    + txtName.Text + "','" + txtAddress.Text + "','" + txtPinCode.Text + "','" + txtMobileNumber.Text + "') select SCOPE_IDENTITY()", con);
                con.Open();
                Int64 PurchaseID = Convert.ToInt64(cmd.ExecuteScalar());
                string CallbackURL = "http://localhost:48599/Callback.aspx";

                PaytmPayment(EMAILID, txtMobileNumber.Text, USERID, PurchaseID.ToString(), hdTotalPayed.Value, CallbackURL);
            }
        }
        else
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }
    public void PaytmPayment(string EMAIL, string MOBILE_NO, string CUST_ID, string ORDER_ID, string TXN_AMOUNT, string CALLBACK_URL)
    {
        String merchantKey = "MPcGd0ghcT%jAOghhgUD5A";
        Dictionary<string, string> parameters = new Dictionary<string, string>();
        parameters.Add("MID", "TechCyghhgfhgfh4079455gb4643273");
        parameters.Add("CHANNEL_ID", "WEB");
        parameters.Add("INDUSTRY_TYPE_ID", "Retail");
        parameters.Add("WEBSITE", "WEBSTAGING");
        parameters.Add("EMAIL", EMAIL);
        parameters.Add("MOBILE_NO", MOBILE_NO);
        parameters.Add("CUST_ID", CUST_ID);
        parameters.Add("ORDER_ID", ORDER_ID);
        parameters.Add("TXN_AMOUNT", TXN_AMOUNT);
        parameters.Add("CALLBACK_URL", CALLBACK_URL); //This parameter is not mandatory. Use this to pass the callback url dynamically.

        string checksum = CheckSum.generateCheckSum(merchantKey, parameters);

        string paytmURL = "https://pguat.paytm.com/oltp-web/processTransaction?orderid=" + ORDER_ID;

        string outputHTML = "<html>";
        outputHTML += "<head>";
        outputHTML += "<title>Merchant Check Out Page</title>";
        outputHTML += "</head>";
        outputHTML += "<body>";
        outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
        outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
        outputHTML += "<table border='1'>";
        outputHTML += "<tbody>";
        foreach (string key in parameters.Keys)
        {
            outputHTML += "<input type='hidden' name='" + key + "' value='" + parameters[key] + "'>";
        }
        outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
        outputHTML += "</tbody>";
        outputHTML += "</table>";
        outputHTML += "<script type='text/javascript'>";
        outputHTML += "document.f1.submit();";
        outputHTML += "</script>";
        outputHTML += "</form>";
        outputHTML += "</body>";
        outputHTML += "</html>";
        Response.Write(outputHTML);
    }
}