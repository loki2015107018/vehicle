<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebAPP.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.3.1.js"></script>
    <link href="CSS/LoginStyles.css" rel="stylesheet" />
     <script src="js/loginvalidation.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function ErrFunction(message) {
                swal({   
                    title:message,
                    text: "",
                   icon: "error",
                    button: "Ok",
                html: true 
                });
          
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidenav">
         <div class="login-main-text">
            <h2>Vehicle<br/> Reservation System</h2>
            <p>Login or register from here to access.</p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12" style="margin-top:-10% !important;">
            <div class="login-form">               
                  <div class="form-group">
                     <label>User Name</label>
                      <asp:TextBox runat="server" ID="txtUserName" class="form-control" placeholder="User Name"></asp:TextBox>                     
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                      <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" class="form-control" placeholder="Password"></asp:TextBox>                     
                  </div>
                <asp:Button runat="server" Text="Login" CssClass="btn btn-black" ID="btnLogin" OnClick="btnLogin_Click" />
                <asp:Button runat="server" Text="Register" CssClass="btn btn-secondary" ID="btnRegister" OnClick="btnRegister_Click" OnClientClick="return loginvalidate()" />                          
            </div>
         </div>
      </div>
    </form>
</body>
</html>
