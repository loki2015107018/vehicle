<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebAPP.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="js/JavaScript.js"></script>
    <script type="text/javascript">
        function checkUsername() {
            var len = document.getElementById('txtUserName').value.length;
            if (len >= 2) {
                $.ajax({
                    type: "POST",
                    url: "Register.aspx/checkUserName",
                    data: '{name: "' + $("#<%=txtUserName.ClientID%>")[0].value + '" }',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: OnSuccess,
                    failure: function (response) {
                        //alert(response.d);
                        var res = response.d.toString();
                        document.getElementById('lblmsg').innerHTML = res;

                    }
                });
            }
            else {
                document.getElementById('lblmsg').innerHTML = '';
            }
        }
        function OnSuccess(response) {
            var res = response.d.toString();
            document.getElementById('lblmsg').innerHTML = res;
            if (!res.includes('Not')) {
                document.getElementById('lblmsg').style.color = 'green';
            }
            else {
                document.getElementById('lblmsg').style.color = 'red';
            }
        }
    </script>

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
        function SuccessFunction(message) {
                swal({   
                    title:message,
                    text: "",
                   icon: "success",
                    button: "Ok",
                html: true 
                });
          
        }
    </script>
</head>
<body>
    <div class="container" style="margin-top: 2% !important;">
        <div class="row">
            <form class="form-horizontal" runat="server" id="form1">
                <fieldset>
                    <span style="float: right;">
                        <a href="Login.aspx">Already have an Account..Click Here</a>
                    </span>
                    <!-- Form Name -->
                    <legend>Registration</legend>


                    <div class="form-group">
                        <label class="col-md-4 control-label" for="country">Role</label>
                        <div class="col-md-5">
                            <asp:DropDownList runat="server" ID="ddlRole" class="form-control">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="country">Branch</label>
                        <div class="col-md-5">
                            <asp:DropDownList runat="server" ID="ddlBranch" class="form-control">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="Name">UserName</label>
                        <div class="col-md-5">
                            <asp:TextBox runat="server" ID="txtUserName" placeholder="username" class="form-control input-md" onkeyup="checkUsername()" MaxLength="10"></asp:TextBox>
                        </div>
                        <asp:Label runat="server" ID="lblmsg"></asp:Label>
                    </div>

                    <!-- Password input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="passwordinput">Password</label>
                        <div class="col-md-5">
                            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" placeholder="Password" class="form-control input-md" MaxLength="10"></asp:TextBox>
                            <%--<span class="help-block">max 16 characters</span>--%>
                        </div>
                    </div>

                    <!-- Password input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="confirm_password">Confirm Password</label>
                        <div class="col-md-5">
                            <asp:TextBox runat="server" ID="txtCPassword" TextMode="Password" placeholder="Confirm Password" class="form-control input-md" MaxLength="10"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="Name">First Name</label>
                        <div class="col-md-5">
                            <asp:TextBox runat="server" ID="txtFirstName" placeholder="First Name" class="form-control input-md" MaxLength="10"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="txtLastName">Last Name</label>
                        <div class="col-md-5">
                            <asp:TextBox runat="server" ID="txtLastName" placeholder="Last Name" class="form-control input-md" MaxLength="10"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="txtAge">Age</label>
                        <div class="col-md-5">
                            <asp:TextBox runat="server" ID="txtAge" placeholder="Age" class="form-control input-md" MaxLength="3"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Multiple Radios (inline) -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="gender">Gender</label>
                        <div class="col-md-4">
                            <asp:RadioButtonList runat="server" ID="rbtnGender" RepeatDirection="Horizontal">
                                <asp:ListItem Value="Male" Text="Male" class="radio-inline" style="margin-right: 15px !important"></asp:ListItem>
                                <asp:ListItem Value="Female" Text="Female" class="radio-inline"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="mobilenumber">Mobile Number</label>
                        <div class="col-md-5">
                            <asp:TextBox runat="server" ID="txtMobile" placeholder="Mobile Number" class="form-control input-md" MaxLength="10"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="emailId">Email Id</label>
                        <div class="col-md-5">
                            <asp:TextBox runat="server" ID="txtEmail" placeholder="user@domain.com" class="form-control input-md"></asp:TextBox>
                        </div>
                    </div>


                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="submit"></label>
                        <div class="col-md-4">
                            <asp:Button runat="server" ID="btnRegister" Text="Submit" class="btn btn-success" OnClick="btnRegister_Click" OnClientClick="return display()" />                            
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>
    </div>
</body>
</html>

