using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BOL;
using BAL;
using DAL;
using System.Data;

namespace Three_Tier12
{
    public partial class UserPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                databind();
                pageloading();
            }

        }
        public void databind()
        {
            UserBol bol = new UserBol();
            UserBal bal = new UserBal();
            bol.Usertype = "User";
            DataSet ds = bal.userpage(bol);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        public void pageloading()
        {
            int id = Convert.ToInt32(Session["UserID"]);
            UserBal bal = new UserBal();
            DataSet ds = bal.userpload(id);
            if (ds.Tables[0].Rows.Count>0)
            {
                name.Text = ds.Tables[0].Rows[0]["Username"].ToString();
                mobile.Text = ds.Tables[0].Rows[0]["Mobile"].ToString();
                email.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["Gender"].ToString();
            }
            databind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
          
            int id = Convert.ToInt32(Session["UserID"]);
            UserBol bol = new UserBol();
            UserBal bal = new UserBal();
            bol.Username = name.Text;
            bol.Mobile = mobile.Text;
            bol.Email = email.Text;
            bol.Gender = DropDownList1.Text;
            bal.updateuser(bol, id);
            pageloading();
            databind();
           


        }
    }
}