using BAL;
using BOL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Three_Tier12
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            UserBol b1 = new UserBol();
            UserBal b2 = new UserBal();
            b1.Username = txtusername.Text;
            b1.Password = txtpassword.Text;
            DataSet ds = b2.Savelogindetails(b1);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["Username"] = ds.Tables[0].Rows[0]["Username"].ToString();
                Session["Email"] = ds.Tables[0].Rows[0]["Email"].ToString();
                Session["Password"] = ds.Tables[0].Rows[0]["Password"].ToString();
                Session["UserId"] = ds.Tables[0].Rows[0]["UserId"].ToString();
                if (ds.Tables[0].Rows[0]["Usertype"].ToString() == "User")
                {
                    Response.Redirect("UserPage.aspx");
                }
                else
                {
                    Response.Redirect("Admin.aspx");
                }
            }
            else
            {
                Response.Write("data Failed");
            }
        }
    }
}