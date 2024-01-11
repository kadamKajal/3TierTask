using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using BOL;
using DAL;

namespace Three_Tier12
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            UserBol b1 = new UserBol();
            UserBal b2 = new UserBal();
            b1.Username = TextBox1.Text;
            b1.Mobile = TextBox2.Text;
            b1.Email = TextBox3.Text;
            b1.Gender = DropDownList1.SelectedValue;
            b1.Usertype = DropDownList2.Text;
            b1.Password = TextBox4.Text;
            //b1.photo = "Image/image7.jpg";
            b2.Insert(b1);
        }
    }
}