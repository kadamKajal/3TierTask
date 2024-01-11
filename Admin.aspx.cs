using BAL;
using BOL;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Three_Tier12
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                gvbind();
            }

        }
        public void gvbind()
        {
            UserBal b1 = new UserBal();
            DataSet ds = b1.adminpage();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int UserID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            TextBox Username = row.FindControl("TextBox2") as TextBox;
            TextBox Mobile = row.FindControl("TextBox3") as TextBox;
            TextBox Email = row.FindControl("TextBox4") as TextBox;
            TextBox Gender = row.FindControl("TextBox5") as TextBox;
            TextBox Usertype = row.FindControl("TextBox6") as TextBox;
            TextBox Password = row.FindControl("TextBox7") as TextBox;
         Image image = row.FindControl("Image2") as Image;
            FileUpload FileUpload1 = row.FindControl("FileUpload1") as FileUpload;

            string path = "~/images";
            if (FileUpload1.HasFile)
            {
                path += FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(path));
            }
            else
            {
                Image image1 = (Image)GridView1.Rows[e.RowIndex].FindControl("image");
                path = image1.ImageUrl;
            }
            UserBol bol = new UserBol();
            UserBal bal = new UserBal();
            bol.Username = Username.Text;
            bol.Mobile = Mobile.Text;
            bol.Password = Password.Text;
            bol.Email = Email.Text;
            bol.Usertype = Usertype.Text;
            bol.Gender = Gender.Text;
            bol.photo = path;
            bal.update(bol, UserID);
            gvbind();

                 


        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gvbind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            UserBal bal = new UserBal();
            bal.Deleted(Id);
            gvbind();


        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gvbind();

        }
       protected void Insert_Click(object sender, EventArgs e)
        {
           
            TextBox username = GridView1.FooterRow.FindControl("TextBox9") as TextBox;
            TextBox mobile = GridView1.FooterRow.FindControl("TextBox10") as TextBox;
            TextBox email = GridView1.FooterRow.FindControl("TextBox11") as TextBox;
            TextBox gender = GridView1.FooterRow.FindControl("TextBox12") as TextBox;
            TextBox Usertype = GridView1.FooterRow.FindControl("TextBox13") as TextBox;
            TextBox password = GridView1.FooterRow.FindControl("TextBox14") as TextBox;

            FileUpload FileUpload2 = GridView1.FooterRow.FindControl("FileUpload2") as FileUpload;
            string filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
            FileUpload2.SaveAs(Server.MapPath("~/images/" + filename));

            UserBol b1 = new UserBol();
            UserDal b2 = new UserDal();
            b1.Username = username.Text;
            b1.Mobile = mobile.Text;
            b1.Email = email.Text;
            b1.Gender = gender.Text;
            b1.Usertype = Usertype.Text;
            b1.Password = password.Text;
            b1.photo = "images/" + filename;
            b2.Insert(b1);
            gvbind();

                 
                 
                 
                



        }
    }
}