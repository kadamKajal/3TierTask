<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Three_Tier12.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

    <style>
      
        .gradient-custom-3 {
            background: white;
        }

        .gradient-custom-4 {
            background: #A52A2A;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="vh-100" style="background-color: #508bfc;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-3">

            <h3 class="mb-5">Registration </h3>

            <div class="form-outline">
                <label">Username</label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-lg" placeholder="Enter Username"  required="true"></asp:TextBox>          
            </div>

            <div class="form-outline">            
             <label>Mobile</label>
            <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-lg" placeholder="Enter Mobile"  required="true"></asp:TextBox>          
            </div>
              <div class="form-outline mb-3">            
             <label>Email</label>
            <asp:TextBox ID="TextBox3" runat="server" class="form-control form-control-lg" placeholder="Enter Email"  required="true"></asp:TextBox>          
            </div>
              <div class="form-outline mb-3">            
             <label>Gender</label>
            <asp:DropDownList ID="DropDownList1" runat="server"  required="true">
                <asp:ListItem>Select Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
                  
            </div>
              <div class="form-outline mb-3">            
             <label>Usertype</label>
               <asp:DropDownList ID="DropDownList2" runat="server"  required="true">
                   <asp:ListItem>Select Type</asp:ListItem>
                   <asp:ListItem>User</asp:ListItem>
                   <asp:ListItem>Admin</asp:ListItem>
               </asp:DropDownList>    
                 
            </div>
               <div class="form-outline mb-3">            
             <label>Password</label>
            <asp:TextBox ID="TextBox4" runat="server" class="form-control form-control-lg"  placeholder="Enter Passwords" required="true"></asp:TextBox>          
            </div>
            <div class="form-outline mb-4">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" class="btn btn-primary btn-lg btn-block"/>
            
                </div>
              <a href="Login.aspx" class="fw-bold text-body">Already have an account? <u>Login here</u></a>
        

           

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
      
    </form>
</body>
</html>
