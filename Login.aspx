<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Three_Tier12.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <style>
        .img {
             width:100%;
             position:fixed;           
          
        }

      .img-fluid{
          display:block;
             border-radius:50%;
             width:30%;
             margin-right:auto;
             margin-left:auto;

         }
        .card-container {
            max-width: 450px;
            margin: 0 auto;
            padding-top:7rem;
            /* margin-top: 100px;*/
        }

        .card-title{
            text-align:center;
            text-transform:uppercase;
            font-family:'Arial Rounded MT';
        }

        .form-control {
            border-radius: 10px;
        }

        .btn {
            background-color: cornflowerblue;
            color: black; 
            padding: 10px 50px;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            margin-right:auto;
            margin-left:auto;
            display:block;
            margin-top:20px;
            text-transform:uppercase;
        }
        .card-body {
            font-weight: 500;
            color: black;
        }
        
        </style>
</head>
<body>
  
        <div>
             <img src="images/th1.jpg" class="img"/>
            </div>
    <form id="form2" runat="server">
   
             <div class="container card-container">
             <div class="card">
             <div class="card-body">
             <img src="images/a1.png" alt="Image Description" class="img-fluid mb-3" />
             <h2 class="card-title">Login Here</h2>
           
            <div class="form-group mb-3">
            <asp:Label ID="username" runat="server" Text="UserName"></asp:Label>
            <asp:TextBox ID="txtusername" placeholder="Enter Username" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group mb-3">
            <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtpassword" placeholder="Enter Password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Button ID="BtnLogin" runat="server" Text="LogIn" onclick="BtnLogin_Click" CssClass="btn btn-primary" />
            </div>
             <a href="Register.aspx">Have No Account!..Register Now...</a>
       </div>

        </div>
        </div>
        
        
    </form>
</body>
</html>
