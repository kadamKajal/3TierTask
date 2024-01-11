<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page1.aspx.cs" Inherits="Three_Tier12.page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <%--    <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"/>--%>
        <asp:LinkButton ID="LinkButton1" runat="server" data-bs-toggle="modal" data-bs-target="#exampleModal">Edit</asp:LinkButton>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" >
        <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="form-group">
          <label>Username</label>
          <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
           <div class="form-group">
          <label>Mobile</label>
          <asp:TextBox ID="mobile" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
           <div class="form-group">
          <label>Email</label>
          <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
           <div class="form-group">
          <label>Gender</label>
          <asp:TextBox ID="gender" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
        </div>
      <div class="modal-footer">
       <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-primary" />
       <%-- <button type="button" class="btn btn-primary">Save changes</button>--%>
      </div>
    </div>
  </div>
</div>
    </form>
</body>
</html>
